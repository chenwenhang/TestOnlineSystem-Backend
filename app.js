var express = require('express');
var app = new express();
var session = require("express-session");
var bodyParser = require('body-parser') 
var cookieParser = require('cookie-parser'); 

/**
 * note
 */
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({
    extended: false
}))
// parse application/json
app.use(bodyParser.json())
// set cookie-parser
app.use(cookieParser())
// set session
app.use(session({
    secret: 'signed key', //signed string, casual
    name: 'session_id', //local cookie name, default=connect.sid, optional
    resave: false, //compulsory save, false, default=true, suggest=false
    saveUninitialized: true, //compulsory save uninitial session, default=true, suggest=true
    // cookie: {secure: false} //use cookie param
    rolling: true //refresh cookie time at each operation
}))


// get req.body
app.post('doLogin', (req, res) => {
    //set signed cookie
    res.cookie('username', 'value', {
        maxAge: 60000,
        signed: true
    });
    //set session
    req.session.userinfo = "abc";
    //get req.body
    console.log(req.body);
    //get signed cookie
    console.log(req.signedCookies.username);
});


/**
 * 
 */



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



//404
app.use(function (req, res) {
    res.status(404).send('404ERROR');
})


app.listen(3000, '127.0.0.1');