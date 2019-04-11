var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser')
var MongoClient = require('mongodb').MongoClient
const MongoStore = require('connect-mongo')(session);
const assert = require('assert');
var app = new express();

const dbUrl = 'mongodb://localhost:27017';
const dbName = 'exam';



// 封装状态方法
var status = (code, msg) => {
    return {
        "code": code,
        "msg": msg
    }
}


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
//设置跨域请求头
app.all('*', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    //Access-Control-Allow-Headers ,可根据浏览器的F12查看,把对应的粘贴在这里就行
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    res.header('Access-Control-Allow-Methods', '*');
    res.header('Content-Type', 'application/json;charset=utf-8');
    next();
});
// judge power
app.use((req, res, next) => {
    if (req.url == '/doLogin' || req.url == '/doRegister') {
        next();
    } else if (session.userinfo && session.userinfo.username != '') {
        next();
    } else {
        res.json(status(1, '未登录'))
    }
});




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











app.get('/doLogin', (req, res) => {
    // console.log(req.body);
    MongoClient.connect(dbUrl, (err, client) => {
        assert.equal(null, err);
        // console.log("Connected successfully to server");
        const db = client.db(dbName);
        const collection = db.collection('user');

        collection.find({}).toArray((err, data) => {
            assert.equal(err, null);
            if (data.length > 0) {
                session.userinfo = data[0];
                // console.log(data[0])
                // console.log("login succeed---")
                var result = Object.assign({}, status(1, '登录成功'), data[0]);
                res.json(result);
            } else {
                // console.log("login fail------")
                res.json(status(0, '登录失败'));
            }
            client.close();
        });
    })
});

app.post('/doRegister', (req, res) => {
    res.send("注册");
});

app.post('/doLogout', (req, res) => {
    res.send("退出");
});



app.get('/manage/user', (req, res) => {
    res.send("获取用户列表");
});


app.get('/manage/tag', (req, res) => {
    res.send("获取标签列表");
});


app.get('/manage/eccupation', (req, res) => {
    res.send("获取职业列表");
});


app.get('/manage/paper', (req, res) => {
    res.send("获取试卷列表");
});


app.get('/manage/question', (req, res) => {
    res.send("获取问题列表");
});


//404
app.use(function (req, res) {
    res.status(404).send('404ERROR');
})

app.listen(3000, '127.0.0.1');