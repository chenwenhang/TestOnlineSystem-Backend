/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 21:20:51
 * @LastEditTime: 2019-04-12 21:35:05
 */
var express=require('express');
var router = express.Router(); 
var user=require('./manage/user.js');
var occupation=require('./manage/occupation.js');
var paper=require('./manage/paper.js');
var question=require('./manage/question.js');
var tag=require('./manage/tag.js');

router.use('/user',user);
router.use('/occupation',occupation);
router.use('/paper',paper);
router.use('/question',question);
router.use('/tag',tag);
router.use('/user',user);

module.exports = router;