/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-26 21:11:19
 * @LastEditTime: 2019-04-26 22:04:37
 */
var express = require('express');
var dateFormat = require('dateformat');
var router = express.Router();
var bodyParser = require('body-parser');
var status = require('../../modules/status.js');
var DB = require('../../modules/db.js');

/**
 * @description: get user data
 * @param {type} 
 * @return: 
 */
router.get('/', (req, res) => {
    let username = req.query.username;
    let array = [null, null, null, null, null]; // paper, total, rate, array, collect
    let disName = {}; // tag name

    // get rate, total, paper
    DB.find('paper_history', {
        "username": req.query.username
    }, (err, data, count) => {
        // console.log(data);
        let right = 0;
        let total = 0;
        let papers = data;
        for (let i = 0; i < data.length; i++) {
            let p = data[i].questions;
            total += p.length;
            for (let j = 0; j < p.length; j++) {
                right += p[j].right == p[j].answer ? 1 : 0;
                for (let k = 0; k < p[j].tag.length; k++) {
                    let attr = p[j].tag[k];
                    if (!disName.hasOwnProperty(attr)) {
                        disName[attr] = 1;
                    } else {
                        disName[attr] += 1;
                    }
                }
            }
        }
        // console.log(disName);
        rate = right / total;
        array[0] = data.length;
        array[1] = total;
        array[2] = rate;
        array[3] = disName;
        if (array[4] === null) {
            return;
        }
        res.json(status(1, '查询成功', array));
    }, req.query.page, req.query.size);

    DB.find('question_collection', {
        "username": req.query.username
    }, (err, data, count) => {
        // console.log(data);
        array[4] = data.length;
        for (let i = 0; i < array.length; i++) {
            if (array[i] === null) {
                return;
            }

        }
        res.json(status(1, '查询成功', array));
    }, req.query.page, req.query.size)


});





module.exports = router;