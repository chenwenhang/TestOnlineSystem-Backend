/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:59:39
 * @LastEditTime: 2019-04-13 10:09:33
 */
var express=require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var DB=require('../../modules/db.js');
 
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
    DB.aggregate('paper', new DB.ObjectID(req.query.id), 'question', 'question_id', 'question', (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

module.exports = router;