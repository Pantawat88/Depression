//ของเดิม
const express = require('express');

//ของใหม่
//มาจากหน้า user.router.js เราจะมาทำการตอบกลับไป Server โดยใช้ Json response.json  
//และมันจะได้อ่าน req.body ได้
const body_parser = require('body-parser');

//ของใหม่
const userRouter = require('./routers/user.router');



//ของเดิม
const app = express();

//ของใหม่ เพื่อที่จะอ่านตัว body ได้ ไม่แน่ใจ
app.use(body_parser.json());

//ของใหม่
app.use('/', userRouter);


//ของเดิม
module.exports = app;


