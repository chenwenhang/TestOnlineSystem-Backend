/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:35:15
 * @LastEditTime: 2019-04-22 16:37:28
 */
var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var md5 = require('md5');
var multiparty = require('multiparty');
var util = require('util');
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
    req.body.power = 3;
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

/**
 * @description: upload picture
 * @param {type} 
 * @return: 
 */
router.post('/upload', (req, res) => {

    var form = new multiparty.Form();
    // upload dir
    form.uploadDir = 'upload/image';
    form.parse(req, (err, fields, files) => {

        Object.keys(files).forEach(key => {
            var file = files[key];
            var picUrl = 'http://localhost:3000/' + file[0].path.replace(/\\/g, "/");
            // console.log(picUrl);
            let json1 = {
                "_id": new DB.ObjectID(key)
            }
            let json2 = {
                "avatar": picUrl
            }
            // console.log(files);
            // console.log(picUrl);

            DB.update('user', json1, json2, (err, data) => {
                if (err) {
                    res.json(status(0, '编辑失败'));
                } else {
                    // res.json(status(1, '编辑成功', {
                    //     picUrl: picUrl
                    // }));
                    res.json({
                        body: {
                            resource_id: key,
                            url: picUrl
                        },
                    });
                }
            })

        });
    });
});

module.exports = router;