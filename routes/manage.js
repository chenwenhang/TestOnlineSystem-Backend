/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 21:20:51
 * @LastEditTime: 2019-04-25 21:58:09
 */
var express = require('express');
var router = express.Router();
var user = require('./manage/user.js');
var occupation = require('./manage/occupation.js');
var paper = require('./manage/paper.js');
var paper_history = require('./manage/paper_history.js');
var question = require('./manage/question.js');
var tag = require('./manage/tag.js');
var question_collection = require('./manage/question_collection.js');

router.use('/user', user);
router.use('/occupation', occupation);
router.use('/paper', paper);
router.use('/paper_history', paper_history);
router.use('/question', question);
router.use('/tag', tag);
router.use('/user', user);
router.use('/question_collection', question_collection);

module.exports = router;