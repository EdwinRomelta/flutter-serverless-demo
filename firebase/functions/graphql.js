const functions = require("firebase-functions");
const request = require("graphql-request");

exports.client = new request.GraphQLClient(functions.config().hasura.url , {
    headers: {
        "content-type": "application/json",
        "x-hasura-admin-secret": functions.config().hasura.secret 
    }
})