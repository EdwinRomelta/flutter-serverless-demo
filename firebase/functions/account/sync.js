const functions = require("firebase-functions");
const {client} = require("../graphql/graphql_client");

exports.processSignUp = functions.auth.user().onCreate(async user => {
    const id = user.uid;
    const email = user.email;
    const username = user.displayName;

    const mutation = `mutation($id: String!, $email: String, $username: String) {
    insert_users(objects: [{
        id: $id,
        email: $email,
        username: $username,
      }]) {
        affected_rows
      }
    }`;
    try {
        const data = await client.request(mutation, {
            id: id,
            email: email,
            username: username
        })
        return data;
    } catch (e) {
        console.log("Error", e.stack);
        console.log("Error", e.name);
        console.log("Error", e.message);
        throw new functions.https.HttpsError('sync-failed');
    }
});