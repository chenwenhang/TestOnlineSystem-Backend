/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:59:13
 * @LastEditTime: 2019-04-27 14:10:26
 */
var express = require('express');
var router = express.Router();
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

/**
 * @description: get tags, support ambiguous query
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    if (req.query.tag) {
        DB.find('tag', {
            "tag": {
                $regex: req.query.tag
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
        DB.find('tag', {}, (err, data, count) => {
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
 * @description: get a tag by id
 * @param {id} 
 * @return: 
 */
router.get('/detail', (req, res) => {
    DB.find('tag', {
        "_id": new DB.ObjectID(req.query._id)
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
 * @description: add a tag
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    DB.insert('tag', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});

/**
 * @description: edit a tag
 * @param {} 
 * @return: 
 */
router.put('/edit', (req, res) => {
    json1 = {
        "_id": new DB.ObjectID(req.body._id)
    }
    delete req.body._id;
    // console.log(req.body);
    DB.update('tag', json1, req.body, (err, data) => {
        if (err) {
            res.json(status(0, '编辑失败'));
        } else {
            res.json(status(1, '编辑成功', data));
        }
    })
});

/**
 * @description: delete a tag by id
 * @param {} 
 * @return: 
 */
router.delete('/delete', (req, res) => {
    DB.delete('tag', {
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