/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:36:26
 * @LastEditTime: 2019-04-20 23:39:56
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
    if (req.query.username) {
        DB.find('user', {
            "username": {
                $regex: req.query.username
            }
        }, (err, data, count) => {
            // console.log(data);
            if (err) {
                res.json(status(0, '查询失败'));
            } else {
                res.json(status(1, '查询成功', data, count));
            }
        }, req.query.page, req.query.size)
    } else {
        DB.find('user', {}, (err, data, count) => {
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
 * @description: get papers ambiguously
 * @param {} 
 * @return: 
 */
router.get('/ambiguous', (req, res) => {
    // console.log(req.body.search);
    DB.find('user', {
        "username": {
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
 * @description: add a user
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    // default password
    req.body.password = 'a123456789';
    req.body.password = md5(req.body.password);
    DB.find('user', req.body, function (err, data) {
        if (data.length > 0) {
            res.json(status(0, '添加失败，用户已存在', data[0]));
        } else {
            DB.insert('user', [req.body], (err, data) => {
                if (err) {
                    res.json(status(0, '添加失败'));
                } else {
                    res.json(status(1, '添加成功', data));
                }
            })
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
    // delete req.body.username;
    delete req.body.password;
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
    DB.delete('user', {
        "_id": new DB.ObjectID(req.query._id)
    }, (err, data) => {
        if (err) {
            res.json(status(0, '删除失败'));
        } else {
            res.json(status(1, '删除成功', data));
        }
    })
});

module.exports = router;