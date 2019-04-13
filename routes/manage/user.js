/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:36:26
 * @LastEditTime: 2019-04-13 14:22:04
 */
var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var md5 = require('md5');
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
        "_id": new DB.ObjectID(req.query._id)
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
    req.body.password = md5(req.body.password);
    DB.insert('user', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});

/**
 * @description: edit a user, passworrd and username can't be changed
 * @param {} 
 * @return: 
 */
router.put('/edit', (req, res) => {
    json1 = {
        "_id": new DB.ObjectID(req.body._id)
    }
    delete req.body._id;
    delete req.body.username;
    delete req.body.password;
    // console.log(req.body);
    DB.update('user', json1, req.body, (err, data) => {
        if (err) {
            res.json(status(0, '编辑失败'));
        } else {
            res.json(status(1, '编辑成功', data));
        }
    })
});

/**
 * @description: delete a user by id
 * @param {} 
 * @return: 
 */
router.delete('/delete', (req, res) => {
    DB.delete('user', {"_id": new DB.ObjectID(req.body._id)}, (err, data) => {
        if (err) {
            res.json(status(0, '删除失败'));
        } else {
            res.json(status(1, '删除成功', data));
        }
    })
});

module.exports = router;