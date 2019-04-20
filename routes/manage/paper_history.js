/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-13 16:00:59
 * @LastEditTime: 2019-04-20 17:02:42
 */
var express = require('express');
var dateFormat = require('dateformat');
var router = express.Router();
var bodyParser = require('body-parser');
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
            "user_id": new DB.ObjectID(req.session.userinfo._id)
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
            "user_id": new DB.ObjectID(req.session.userinfo._id)
        }, (err, data, count) => {
            // console.log(data);
            if (err) {
                res.json(status(0, '查询失败'));
            } else {
                res.json(status(1, '查询成功', data, count));
            }
        }, req.query.page, req.query.size)
    }


    // DB.aggregate('paper_history', new DB.ObjectID(req.session.userinfo._id), 'question', 'answer', 'question', (err, data) => {
    //     // console.log(data);
    //     if (err) {
    //         console.log(err);

    //         res.json(status(0, '查询失败'));
    //     } else {
    //         res.json(status(1, '查询成功', data));
    //     }
    // })
});

/**
 * @description: get a paper_history detail by id
 * @param {} 
 * @return: 
 */
router.get('/detail', (req, res) => {
    // console.log(req.session);

    DB.find('paper_history', {
        "_id": new DB.ObjectID(req.body_id)
    }, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })

    // DB.aggregate('paper_history', new DB.ObjectID(req.session.userinfo._id), 'question', 'answer', 'question', (err, data) => {
    //     // console.log(data);
    //     if (err) {
    //         console.log(err);

    //         res.json(status(0, '查询失败'));
    //     } else {
    //         res.json(status(1, '查询成功', data));
    //     }
    // })
});

/**
 * @description: add a paper_history
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    // req.body.start_time = dateFormat(req.body.start_time, 'yyyy-mm-dd hh:MM:ss');
    // req.body.end_time = dateFormat(req.body.end_time, 'yyyy-mm-dd hh:MM:ss');
    req.body._id = new DB.ObjectID(req.body._id);
    req.body.paper_id = new DB.ObjectID(req.body.paper_id);
    req.body.user_id = new DB.ObjectID(req.body.user_id);
    for (let i = 0, len = req.body.questions.length; i < len; i++) {
        req.body.questions[i]._id = new DB.ObjectID(req.body.questions[i]._id);
    }
    // res.json(req.body);
    DB.insert('paper_history', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});



module.exports = router;