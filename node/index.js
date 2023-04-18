const db = require('./config/db');

const express = require("express");
const cors = require('cors');

const app = express();
app.use(express.json()); 
app.use(cors());

const User = require('./model/user.model');

//insert the emplye data into data base api
app.post('/insertUser',async (req,res) => {
    const data = new User(req.body);
    data.save().then(async () => {
        res.json(await User.find());
    });
})

//by using this function fetch the all employee data
app.get('/getUsers',async (req,res) => {
    const data = await User.find();
    res.json(data);
})

app.listen(3000,() => {
    console.log('Connected to server at http://localhost:3000');
});




// //post api
// app.post("/api/add_user",(req,res)=>{

//     console.log("Result", req.body);

//     const udata = {
//         "id": userData.length+1,
//         "userEmail": req.body.userEmail,
//         "userPassword": req.body.userPassword,
//         "userFName": req.body.userFName,
//         "userLName": req.body.userLName,
//         "userNickName": req.body.userNickName,
//         "userBirthdayDate": req.body.userBirthdayDate,
//         "userFaculty": req.body.userFaculty,
//         "avatarID": req.body.avatarID,
//     };

//     userData.push(udata);
//     console.log("Final", udata);

//     res.status(200).send({
//         "status_code": 200,
//         "message": "User added successfully",
//         "user": udata
//     });
// })

// app.get("/api/get_user",(req,res)=>{

//     if(userData.length >0){
//         res.status(200).send({
//             'status_code': 200,
//             'user': userData 
//         });
//     }else{
//         res.status(200).send({
//             'status_code': 200,
//             'user': []
//         });
//     }
// })