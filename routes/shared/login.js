/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:35:15
 * @LastEditTime: 2019-04-18 20:14:52
 */
var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var md5 = require('md5');
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

// parse application/x-www-form-urlencoded
router.use(bodyParser.urlencoded({
    extended: false
}));
// parse application/json
router.use(bodyParser.json());


/**
 * @description: login
 * @param {type} 
 * @return: 
 */
router.post('/', (req, res) => {
    req.body.password = md5(req.body.password);
    DB.find('user', req.body, function (err, data) {
        if (data.length > 0) {
            req.session.userinfo = data[0];
            // console.log(md5(data[0].password));
            // console.log(session)
            // console.log("login succeed---")
            res.json(status(1, '登录成功', data[0]));
        } else {
            // console.log("login fail------")
            res.json(status(0, '登录失败'));
        }
    })
});

/**
 * @description: register
 * @param {type} 
 * @return: 
 */
router.post('/register', (req, res) => {
    req.body.password = md5(req.body.password);
    DB.find('user', req.body, function (err, data) {
        if (data.length > 0) {
            res.json(status(0, '注册失败，用户已存在', data[0]));
        } else {
            DB.insert('user', [req.body], (err, data) => {
                if (err) {
                    res.json(status(0, '注册失败'));
                } else {
                    res.json(status(1, '注册成功', data));
                }
            })
        }
    })
    
});

/**
 * @description: logout
 * @param {type} 
 * @return: 
 */
router.post('/logout', (req, res) => {
    req.session.destroy(function (err) {
        if (err) {
            res.json(status(0, '退出失败'));
        } else {
            res.json(status(1, '退出成功'));
        }
    })
});

module.exports = router;