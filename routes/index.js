/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 20:38:06
 * @LastEditTime: 2019-04-12 21:35:12
 */
var express=require('express');
var router = express.Router(); 
var login=require('./shared/login.js');

//set routes
router.get('/',function(req,res){
    res.send('index');
});
router.use('/login',login);


module.exports = router;