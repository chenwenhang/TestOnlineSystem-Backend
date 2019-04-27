/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-13 16:00:59
 * @LastEditTime: 2019-04-27 14:10:06
 */
var express = require('express');
var router = express.Router();
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

/**
 * @description: get all paper_history
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    // console.log(req.session);
    if (req.query.title) {
        DB.find('paper_history', {
            "title": {
                $regex: req.query.title
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
        DB.find('paper_history', {
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
 * @description: get a paper_history detail by id
 * @param {} 
 * @return: 
 */
router.get('/detail', (req, res) => {
    // console.log(req.session);

    DB.find('paper_history', {
        "_id": new DB.ObjectID(req.query._id)
    }, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })

});

/**
 * @description: add a paper_history
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    let questions = req.body.questions;
    // caculate score 
    let score = 0
    for (let i = 0; i < questions.length; i++) {
        let s = checkAnswer(questions[i]);
        if (!s) {
            let que = JSON.parse(JSON.stringify(questions[i]));
            que.username = req.body.username;
            que.question_id = questions[i]._id;
            delete que._id;

            let tmp = JSON.parse(JSON.stringify(que));
            delete tmp.answer;
            // if exist
            DB.find('question_collection', tmp, (err, data) => {
                if (err) {
                    // res.json(status(0, '添加错题失败'));
                    console.log(err);
                } else {
                    // res.json(status(1, '添加错题成功', data));
                    if (data.length == 0) {

                        // if not exist, insert
                        DB.insert('question_collection', [que], (err, data) => {
                            if (err) {
                                // res.json(status(0, '添加错题失败'));
                                console.log(err);

                            } else {
                                // res.json(status(1, '添加错题成功', data));
                            }
                        })
                    }
                }
            })


        } else {
            score += s
        }

    }
    req.body.my_mark = score;
    delete req.body._id;
    delete req.body._value;
    // res.json(status(1, '添加成功', req.body));
    DB.insert('paper_history', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            // console.log(data);

            res.json(status(1, '添加成功', {
                my_mark: req.body.my_mark,
                _id: data.ops[0]._id
            }));
        }
    })
});

var checkAnswer = (question) => {
    if (question.right == question.answer) {
        return parseInt(question.score);
    } else {
        return 0;
    }
}


module.exports = router;