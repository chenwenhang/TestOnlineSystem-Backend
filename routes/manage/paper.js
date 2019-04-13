/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:59:39
 * @LastEditTime: 2019-04-13 15:45:27
 */
var express = require('express');
var dateFormat = require('dateformat');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

/**
 * @description: get all papers
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    DB.find('paper', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get a paper_detail by id
 * @param {id} 
 * @return: 
 */
router.get('/detail', (req, res) => {
    DB.aggregate('paper', new DB.ObjectID(req.query._id), 'question', 'question_id', 'question', (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get papers ambiguously
 * @param {} 
 * @return: 
 */
router.get('/ambiguous', (req, res) => {
    // console.log(req.body.search);
    DB.find('paper', {
        "title": {
            $regex: req.query.search
        }
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
 * @description: add a paper
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    // req.body.start_time = dateFormat(req.body.start_time, 'yyyy-mm-dd hh:MM:ss');
    // req.body.end_time = dateFormat(req.body.end_time, 'yyyy-mm-dd hh:MM:ss');
    req.body.is_valid = true;
    req.body.question_id = [];
    req.body.create_user = new DB.ObjectID(req.body.create_user);
    for (let i = 0, len = req.body.question.length; i < len; i++) {
        req.body.question_id.push(new DB.ObjectID(req.body.question[i]._id));
    }
    delete req.body.question;
    // res.json(req.body);
    DB.insert('paper', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});

/**
 * @description: edit a paper
 * @param {} 
 * @return: 
 */
router.put('/edit', (req, res) => {
    json1 = {
        "_id": new DB.ObjectID(req.body._id)
    }
    delete req.body._id;
    req.body.question_id = [];
    for (let i = 0, len = req.body.question.length; i < len; i++) {
        req.body.question_id.push(new DB.ObjectID(req.body.question[i]._id));
    }
    delete req.body.question;
    
    // console.log(req.body);
    DB.update('paper', json1, req.body, (err, data) => {
        if (err) {
            res.json(status(0, '编辑失败'));
        } else {
            res.json(status(1, '编辑成功', data));
        }
    })
});

/**
 * @description: delete a paper by id
 * @param {} 
 * @return: 
 */
router.delete('/delete', (req, res) => {
    DB.delete('paper', {
        "_id": new DB.ObjectID(req.body._id)
    }, (err, data) => {
        if (err) {
            res.json(status(0, '删除失败'));
        } else {
            res.json(status(1, '删除成功', data));
        }
    })
});

module.exports = router;