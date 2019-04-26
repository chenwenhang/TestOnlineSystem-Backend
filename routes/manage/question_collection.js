/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-25 18:28:18
 * @LastEditTime: 2019-04-26 13:36:20
 */
var express = require('express');
var dateFormat = require('dateformat');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');


/**
 * @description: get question_collection
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    if (req.query.content) {
        DB.find('question_collection', {
            "content": {
                $regex: req.query.content
            },
            "username": req.query.username
        }, (err, data, count) => {
            // console.log(data);
            if (err) {
                res.json(status(0, '查询失败'));
            } else {
                res.json(status(1, '查询成功', data, count));
            }
        }, req.query.page, req.query.size)
    } else {
        DB.find('question_collection', {
            "username": req.query.username
        }, (err, data, count) => {
            // console.log(data);
            if (err) {
                res.json(status(0, '查询失败'));
            } else {
                res.json(status(1, '查询成功', data, count));
            }
        }, req.query.page, req.query.size)
    }
});


/**
 * @description: add a question to collection
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    // req.body._id = new DB.ObjectID(req.body._id);
    DB.insert('question_collection', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});

/**
 * @description: delete a question from collection
 * @param {} 
 * @return: 
 */
router.delete('/delete', (req, res) => {
    DB.delete('question_collection', {
        "question_id": req.query.question_id,
        "username": req.query.username
    }, (err, data) => {
        if (err) {
            res.json(status(0, '删除失败'));
        } else {
            res.json(status(1, '删除成功', data));
        }
    })
});

/**
 * @description: delete a question from collection
 * @param {} 
 * @return: 
 */
router.post('/check', (req, res) => {
    let collectionId = req.body.collectionId;
    let username = req.body.username;
    let collectionNum = [];
    for (let i = 0; i < collectionId.length; i++) {
        collectionNum.push(null);
    }
    for (var i = 0; i < collectionId.length; i++) {
        (function (i) {
            let question_id = collectionId[i];
            DB.find('question_collection', {
                "question_id": question_id,
                "username": username
            }, (err, data) => {
                if (err) {
                    // console.log(err);
                    res.json(status(0, '检验失败'));
                } else {
                    if (data.length != 0) {
                        collectionNum[i] = 1;
                    } else {
                        collectionNum[i] = 0;
                    }
                    for (let j = 0; j < collectionNum.length; j++) {
                        if (collectionNum[j] === null) {
                            return;
                        }

                    }
                    // console.log(collectionNum);

                    res.json(status(1, '检验成功', collectionNum));
                }
            })
        })(i);
    }


});

module.exports = router;