const admin = require('firebase-admin');
const functions = require('firebase-functions');
const path = require('path');
const { v4: uuidv4 } = require('uuid');
const Busboy = require('busboy');
const bucket = admin.storage().bucket("flutter-serverless-demo.appspot.com");

const config = {
    action: "read",
    expires: "01-01-2101"
  };
const folder = 'posts/';

exports.upload = functions.https.onRequest(async (req, res) => {
    res.set('Access-Control-Allow-Origin', '*');
    if (req.method === 'OPTIONS') {
        console.log(`Options CORS`);
        res.set('Access-Control-Allow-Methods', 'POST');
        res.set('Access-Control-Allow-Headers', 'Content-Type');
        res.set('Access-Control-Max-Age', '3600');
        res.status(204).send('');
    } else if(req.method === 'POST') {
        const busboy = new Busboy({ headers: req.headers });

        const uploads = {}
        busboy.on('file', async (fieldname, file, filename, encoding, mimetype) => {
            console.log(`File [${file}] filename: ${filename}, encoding: ${encoding}, mimetype: ${mimetype}`);
            const gcsname = folder + uuidv4();
            const storedFile = bucket.file(gcsname);
            uploads[filename] = storedFile;
            console.log(`Saving '${filename}' to ${gcsname}`);
            let fileBuffer = Buffer('');
            file.on("data", data => {
                fileBuffer = Buffer.concat([fileBuffer, data]);
            });

            file.on("end", () => {
                var fileStream = storedFile.createWriteStream({
                    metadata: {
                      contentType: mimetype
                    }
                  });
                file.pipe(fileStream);
                fileStream.on("error", err => {
                    console.log(err);
                    res.status(405).end();
                });
                fileStream.end(fileBuffer);
            });
        });

        busboy.on('finish', async () => {
            console.log('Finish storing all file');
            const files = []
            for (name in uploads) {
                var storedFile = uploads[name];
                try {
                    var url = await storedFile.getSignedUrl(config);
                    files.push({
                        'path' : name,
                        'url' : url[0]
                    });                        
                } catch (error) {
                    console.log(error);
                    res.status(500).end();
                    return;
                }
            }
            const response = JSON.stringify({
                'data' : files
            });
            console.log(response);
            res.write(response);
            res.end();
        });

        busboy.end(req.rawBody);
    } else {
        res.status(405).end();
    }
})