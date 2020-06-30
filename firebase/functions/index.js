const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

module.exports = {
    ...require("./account/register.js"),
    ...require("./account/sync.js"),
    ...require("./account/del.js"),
    ...require("./posts/upload.js"),
  };