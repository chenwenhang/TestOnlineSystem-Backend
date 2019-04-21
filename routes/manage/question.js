/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:59:57
 * @LastEditTime: 2019-04-21 19:35:40
 */
var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var dateFormat = require('dateformat');
var status = require('../../modules/status.js')
var DB = require('../../modules/db.js');


/**
 * @description: get questions, support ambiguous query
 * @param {} 
 * @return: 
 */
router.get('/', (req, res) => {
    if (req.query.content) {
        DB.find('question', {
            "content": {
                $regex: req.query.content
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
        DB.find('question', {}, (err, data, count) => {
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
 * @description: get a question by id
 * @param {} 
 * @return: 
 */
router.get('/detail', (req, res) => {
    DB.find('question', {
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
 * @description: get questions ambiguously
 * @param {} 
 * @return: 
 */
// router.get('/ambiguous', (req, res) => {
//     // console.log(req.body.search);
//     DB.find('question', {
//         "content": {
//             $regex: req.query.search
//         }
//     }, (err, data) => {
//         // console.log(data);
//         if (err) {
//             res.json(status(0, '查询失败'));
//         } else {
//             res.json(status(1, '查询成功', data));
//         }
//     })
// });

/**
 * @description: add a question
 * @param {} 
 * @return: 
 */
router.post('/add', (req, res) => {
    const now = new Date();
    req.body.create_time = dateFormat(now, 'yyyy-mm-dd HH:MM:ss');
    DB.insert('question', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '添加失败'));
        } else {
            res.json(status(1, '添加成功', data));
        }
    })
});

/**
 * @description: edit a question
 * @param {} 
 * @return: 
 */
router.put('/edit', (req, res) => {
    json1 = {
        "_id": new DB.ObjectID(req.body._id)
    }
    delete req.body._id;
    // console.log(req.body);
    DB.update('question', json1, req.body, (err, data) => {
        if (err) {
            res.json(status(0, '编辑失败'));
        } else {
            res.json(status(1, '编辑成功', data));
        }
    })
});

/**
 * @description: delete a question by id
 * @param {} 
 * @return: 
 */
router.delete('/delete', (req, res) => {
    DB.delete('question', {
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