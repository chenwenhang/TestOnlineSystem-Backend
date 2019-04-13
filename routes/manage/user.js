/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:36:26
 * @LastEditTime: 2019-04-13 10:09:13
 */
var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

/**
 * @description: get all users
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {

    DB.find('user', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get a user by id
 * @param {} 
 * @return: 
 */
router.get('/detail', (req, res) => {

    DB.find('user', {
        "_id": new DB.ObjectID(req.query.id)
    }, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data[0]));
        }
    })
});

/**
 * @description: add a user
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {

    DB.find('user', req.body, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data[0]));
        }
    })
});


module.exports = router;