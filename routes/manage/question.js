/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:59:57
 * @LastEditTime: 2019-04-13 10:09:27
 */
var express=require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js')
var DB=require('../../modules/db.js');

/**
 * @description: get all questions
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    DB.find('question', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});


module.exports = router;