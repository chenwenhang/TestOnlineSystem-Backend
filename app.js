/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 15:06:28
 * @LastEditTime: 2019-04-27 14:12:19
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

// set static folder
app.use('/upload',express.static('upload'));
app.use('/public',express.static('public'));

//set cross domain header
app.all('*', (req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type,Content-Length, Authorization, Accept,X-Requested-With');
    res.header('Access-Control-Allow-Methods', 'PUT,POST,GET,DELETE,OPTIONS');
    res.header('Content-Type', 'application/json;charset=utf-8');
    if (req.method == "OPTIONS") {
        res.send(200);
    } else {
        next();
    }
});


var index = require('./routes/index.js');
var manage = require('./routes/manage.js');

/**
 * @description: judge power
 * @param {type} 
 * @return: 
 */
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
