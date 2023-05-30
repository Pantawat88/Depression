const mongoose = require('mongoose');

//mongodb+srv://admin1:1234@cluster0.vtbhvka.mongodb.net/test1?retryWrites=true&w=majority
//mongodb+srv://admin1:1234@cluster0.vtbhvka.mongodb.net/aceco?retryWrites=true&w=majority

const connection = mongoose.createConnection('mongodb+srv://admin1:1234@cluster0.vtbhvka.mongodb.net/aceco?retryWrites=true&w=majority').on('open', ()=>{
    console.log("MongoDb connected");
}).on('error',()=>{
    console.log("MongoDb connected error");
}); 
///ลองใช้ฐานข้อมูลในเครื่องก่อน

module.exports = connection;