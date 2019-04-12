var MongoClient = require('mongodb').MongoClient
const dbUrl = 'mongodb://localhost:27017';
const dbName = 'exam';
const assert = require('assert');

var __connectDB = (callback) => {
    MongoClient.connect(dbUrl, (err, client) => {
        assert.equal(null, err);
        // console.log("Connected successfully to server");
        callback(client);
    })
}

exports.find = (collectionName, json, callback) => {
    __connectDB((client) => {
        const db = client.db(dbName);
        const collection = db.collection(collectionName);
        collection.find(json).toArray((err, data) => {
            // assert.equal(err, null);
            client.close();
            callback(err, data);
        });
    })
}

exports.insert = (collectionName, jsonArray, callback) => {
    __connectDB((client) => {
        const db = client.db(dbName);
        const collection = db.collection(collectionName);
        collection.insertMany(jsonArray, (err, data) => {
            // assert.equal(err, null);
            client.close();
            callback(err, data);
        });
    })
}

exports.update = (collectionName, json1, json2, callback) => {
    __connectDB((client) => {
        const db = client.db(dbName);
        const collection = db.collection(collectionName);
        collection.updateOne(json1, {
            $set: json2
        }, (err, data) => {
            // assert.equal(err, null);
            client.close();
            callback(err, data);
        });
    })
}

exports.delete = (collectionName, json, callback) => {
    __connectDB((client) => {
        const db = client.db(dbName);
        const collection = db.collection(collectionName);
        collection.deleteMany(json, (err, data) => {
            // assert.equal(err, null);
            client.close();
            callback(err, data);
        });
    })
}