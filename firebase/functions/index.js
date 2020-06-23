const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

module.exports = {
    ...require("./register.js"),
    ...require("./sync.js"),
    ...require("./del.js"),
  };