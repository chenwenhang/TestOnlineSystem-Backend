/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:35:15
 * @LastEditTime: 2019-04-13 10:09:03
 */
var express=require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var md5 = require('md5');
var status = require('../../modules/status.js');
var DB=require('../../modules/db.js');

// parse application/x-www-form-urlencoded
router.use(bodyParser.urlencoded({ extended: false }));
// parse application/json
router.use(bodyParser.json());

router.get('/', (req, res) => {
    DB.find('user', {}, (err, data) => {
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
 * @description: login
 * @param {type} 
 * @return: 
 */
// router.post('/', (req, res) => {
//     DB.find('user', req.body, function (err, data) {
//         if (data.length > 0) {
//             req.session.userinfo = data[0];
//             // console.log(md5(data[0].password));
//             // console.log(session)
//             // console.log("login succeed---")
//             res.json(status(1, '登录成功', data[0]));
//         } else {
//             // console.log("login fail------")
//             res.json(status(0, '登录失败'));
//         }
//     })
// });

/**
 * @description: register
 * @param {type} 
 * @return: 
 */
router.post('/doRegister', (req, res) => {
    DB.insert('user', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '注册失败'));
        } else {
            res.json(status(1, '注册成功'));
        }
    })
});

/**
 * @description: logout
 * @param {type} 
 * @return: 
 */
router.post('/doLogout', (req, res) => {
    req.session.destroy(function (err) {
        if (err) {
            res.json(status(0, '退出失败'));
        } else {
            res.json(status(1, '退出成功'));
        }
    })
});

module.exports = router;