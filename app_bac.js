/*
 * @Author: Chen Wenhang
 * @Description: 
 * @Github: https://github.com/chenwenhang
 * @Date: 2019-04-12 15:06:28
 * @LastEditTime: 2019-04-12 20:33:54
 */
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser')
const MongoStore = require('connect-mongo')(session);

var DB = require('./modules/db.js');
var md5 = require('md5');

var app = new express();

// combine json methods
var status = (code, msg, data = {}) => {
    return {
        "code": code,
        "msg": msg,
        "data": data
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
//set cross domain header
app.all('*', (req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    res.header('Access-Control-Allow-Methods', '*');
    res.header('Content-Type', 'application/json;charset=utf-8');
    next();
});
// judge power
// app.use((req, res, next) => {
//     if (req.url == '/doLogin' || req.url == '/doRegister') {
//         next();
//     } else if (session.userinfo && session.userinfo.username != '') {
//         next();
//     } else {
//         res.json(status(1, '未登录'));
//     }
// });




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







/**
 * 
 * GET（SELECT）：get resource from server
 * POST（CREATE）：create resources on server
 * PUT（UPDATE）：update resources on server
 * DELETE（DELETE）：delete resources on server。
 */

app.get('/doLogin', (req, res) => {
    DB.find('user', {}, (err, data) => {
        if (data.length > 0) {
            req.session.userinfo = data[0];
            // console.log(md5(data[0].password));
            // console.log(session)
            // console.log("login succeed---")
            res.json(status(1, '登录成功', data[0]));
        } else {
            // console.log("login fail------")
            res.json(status(0, '登录失败'));
        }
    })
});

/**
 * @description: login
 * @param {type} 
 * @return: 
 */
// app.post('/doLogin', (req, res) => {
//     DB.find('user', req.body, function (err, data) {
//         if (data.length > 0) {
//             req.session.userinfo = data[0];
//             // console.log(md5(data[0].password));
//             // console.log(session)
//             // console.log("login succeed---")
//             res.json(status(1, '登录成功', data[0]));
//         } else {
//             // console.log("login fail------")
//             res.json(status(0, '登录失败'));
//         }
//     })
// });

/**
 * @description: register
 * @param {type} 
 * @return: 
 */
app.post('/doRegister', (req, res) => {
    DB.insert('user', [req.body], (err, data) => {
        if (err) {
            res.json(status(0, '注册失败'));
        } else {
            res.json(status(1, '注册成功'));
        }
    })
});

/**
 * @description: logout
 * @param {type} 
 * @return: 
 */
app.post('/doLogout', (req, res) => {
    req.session.destroy(function (err) {
        if (err) {
            res.json(status(0, '退出失败'));
        } else {
            res.json(status(1, '退出成功'));
        }
    })
});


/**
 * @description: get all users
 * @param {} 
 * @return: 
 */
app.get('/manage/user', (req, res) => {

    DB.find('user', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get all tags
 * @param {} 
 * @return: 
 */
app.get('/manage/tag', (req, res) => {

    DB.find('tag', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get all occupations
 * @param {} 
 * @return: 
 */
app.get('/manage/occupation', (req, res) => {
    DB.find('occupation', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get all papers
 * @param {} 
 * @return: 
 */
app.get('/manage/paper', (req, res) => {
    DB.find('paper', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get paper_detail by id
 * @param {id} 
 * @return: 
 */
app.get('/manage/paper_detail', (req, res) => {
    DB.aggregate('paper', new DB.ObjectID(req.query.id), 'question', 'question_id', 'question', (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});

/**
 * @description: get all questions
 * @param {} 
 * @return: 
 */
app.get('/manage/question', (req, res) => {
    DB.find('question', {}, (err, data) => {
        // console.log(data);
        if (err) {
            res.json(status(0, '查询失败'));
        } else {
            res.json(status(1, '查询成功', data));
        }
    })
});


//404
app.use((req, res) => {
    res.status(404).send('404ERROR');
})

app.listen(3000, '127.0.0.1');