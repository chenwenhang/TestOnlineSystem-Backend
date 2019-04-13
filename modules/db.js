/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 15:06:28
 * @LastEditTime: 2019-04-13 13:57:47
 */

var MongoClient = require('mongodb').MongoClient
var ObjectID = require('mongodb').ObjectID;
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

exports.ObjectID = ObjectID;

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
/**
 * @description: join query
 * @param {collectionName1, _id, collectionName2, localField, anotherName, callback} 
 * @return: 
 */
exports.aggregate = (collectionName1, _id, collectionName2, localField, anotherName, callback) => {
    __connectDB((client) => {
        const db = client.db(dbName);
        const collection = db.collection(collectionName1);
        collection.aggregate([{
            $unwind: "$" + localField
        }, {
            $lookup: {
                from: collectionName2, // 右集合
                localField: localField, // 左集合 join 字段
                foreignField: '_id', // 右集合 join 字段
                as: anotherName // 新生成字段（类型array）
            }
        }, {
            $match: {
                anotherName: {
                    $ne: []
                },
                // conditionJson
                _id:_id
            }
        }]).toArray((err, data) => {
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