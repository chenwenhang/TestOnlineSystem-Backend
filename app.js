var express = require('express');
var app = new express();

app.get('/', (req, res) => {
    res.send('express');
});

//动态传参        http://localhost:3000/news/xxx
app.get('/news/:aid', (req, res) => {
    //req.params获取动态参数         
    var aid=req.params.aid;        //  { aid: 'xxx' }
    res.send('news'+aid);
});

//获取get传值     http://localhost:3000/product?aid=xxx&cid=yyy
app.get('/product', (req, res) => {
    //req.query获取get参数         
    console.log(req.query);        //  { aid: 'xxx', cid: 'yyy' }
    res.send('product'+req.query.aid);
});






app.listen(3000,'127.0.0.1');