/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 15:06:28
 * @LastEditTime: 2019-04-19 21:29:45
 */
/**
 * 
 * GET（SELECT）：get resource from server
 * POST（CREATE）：create resources on server
 * PUT（UPDATE）：update resources on server
 * DELETE（DELETE）：delete resources on server。
 */
var express = require('express');
var session = require('express-session');
const MongoStore = require('connect-mongo')(session);
var status = require('./modules/status.js');
var bodyParser = require('body-parser');

var app = new express();

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({
    extended: false
}))
// parse application/json
app.use(bodyParser.json())
// set session
app.use(session({
    secret: 'ItOnlineSystem Signed Key', //signed string, casual
    resave: false, //compulsory save, false, default=true, suggest=false
    saveUninitialized: true, //compulsory save uninitial session, default=true, suggest=true
    cookie: { //use cookie param
        secure: false,
        maxAge: 1000 * 60 * 30
    },
    rolling: true, //refresh cookie time at each operation
    store: new MongoStore({ //store session in database
        url: 'mongodb://127.0.0.1:27017/exam', //database url
        touchAfter: 24 * 3600
    })
}))
//set cross domain header
app.all('*', (req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    res.header('Access-Control-Allow-Methods', '*');
    res.header('Content-Type', 'application/json;charset=utf-8');
    next();
});

/**
 * @description: judge power
 * @param {type} 
 * @return: 
 */
var index = require('./routes/index.js');
var manage = require('./routes/manage.js');

// app.use((req, res, next) => {
//     if (req.url == '/login' || req.url == '/login/register') {
//         next();
//     } else if (req.session.userinfo && req.session.userinfo.username != '') {
//         next();
//     } else {
//         res.json(status(0, '未登录'));
//     }
// });

app.use('/', index);
// app.use((req, res, next) => {
//     if (req.session.userinfo.power == 1) {
//         next();
//     } else {
//         res.json(status(0, '无权访问管理端'));
//     }
// })

app.use('/manage', manage);

//404
app.use((req, res) => {
    res.json(status(0, '404错误'));
})




app.listen(3000, '127.0.0.1');





// get req.body
// app.get('/doLogin', (req, res) => {
//set signed cookie
// res.cookie('username', 'value', {
//     secret: 'ssss',
//     maxAge: 60000,
//     signed: true
// });

//get signed cookie
// console.log(req.signedCookies.username);

//set session
// req.session.userinfo = "abc";

//logout by set maxAge
// req.session.maxAge = 0;

//logout by destory
// req.session.destroy(function (err) {
//     console.log(err)
// });

//get req.body
// console.log(req.body);
// res.send("hello")

// });
/*

//应用级中间件，用于权限判断等，可写在匹配前或后
app.use('/product', function (req, res, next) {
    console.log('product中间件通过app.use');
    //继续向下匹配，没有则卡在这
    next();
})

app.get('/', (req, res) => {
    res.send('express');
});

//动态传参        http://localhost:3000/news/xxx
app.get('/news/:aid', (req, res) => {
    //req.params获取动态参数         
    var aid = req.params.aid; //  { aid: 'xxx' }
    res.send('news' + aid);
});

//获取get传值     http://localhost:3000/product?aid=xxx&cid=yyy
app.get('/product', (req, res) => {
    //req.query获取get参数         
    console.log(req.query); //  { aid: 'xxx', cid: 'yyy' }
    res.send('product' + req.query.aid);
});

*/