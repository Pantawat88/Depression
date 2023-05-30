const mongoose = require('mongoose');
const db = require('../config/db');
const bcrypt = require("bcrypt"); //การเข้ารหัสของรหัสผ่าน

const { Schema } = mongoose;

//กำหนดโครงสร้าง
const userSchema = new Schema({
    email:{
        type:String,
        lowercase:true, //ให้อีเมลเป็นตัวเล็ก
        required : true,
        unique: true, //ไม่ให้อีเมลซ้ำกัน

    },
    password:{
        type:String,
        required : true,
    }
});

userSchema.pre('save',async function(){
    try {
        var user = this; //เราแค่อ้างอิง Schema
        const salt = await(bcrypt.genSalt(10));
        const hashpass = await bcrypt.hash(user.password,salt); //เข้ารหัสผ่าน เซฟลง database

        user.password = hashpass;

    } catch (error) {
        throw error;
    }
});

//สร้างส่วนในการเปรียบเทียบรหัสผ่าน จากการ login ผ่านแอพ 

userSchema.methods.comparePassword = async function(userPassword){
    try {
        console.log("----------------no password", this.password);


        const isMatch = await bcrypt.compare(userPassword, this.password); //(userPassword คือ รหัสที่กรอกเข้ามาจากหน้าแอพ, this.password คือ รหัสที่มาจากฐานข้อมูล โดย password คือตัวแปรในฐานข้อมูลเลย)
        return isMatch;// return ออกไป แล้วไปเช็คใน user.controller.js ว่าเป็นจริงหรือเท็จ
    } catch (error) {
        
    }
}









const UserModel = db.model('user', userSchema); //ตั้งชื่อ คอลเลคชั่นฐานข้อมูลว่า user แล้วส่งเป็น userSchema

//ต้องส่งออกโมดูลจะได้ใช้งานได้ทุกที
module.exports = UserModel;


