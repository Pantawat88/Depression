//มาสร้างคลาสตรงและฟังก์ชั่นสำหรับการลงทะเบียน

//เรานำข้อมูลโครงสร้างมาใช้ก็ต้องประกาศเรีกยใช้
const UserModel = require('../model/user.model');


const jwt = require('jsonwebtoken'); 

class UserService{
    static async registerUser(email,password){
        try{
            //ส่งข้อมูล อีเมล และรหัสผ่านเข้ามา
            const createUser = new UserModel({email,password}); 
            //ประกาศให้ข้อมูลที่ถูกนำเข้ามา บันทึกลง database
            return await createUser.save();
        }catch(err){
            throw err;
        }
    }

    //สร้างฟังก์ชั่นติดต่อไปฐานข้อมูล
    static async checkuser(email){
        try {
            //รับข้อมูลในฐานข้อมูล แล้วส่งกลับไปที่ controller
            return await UserModel.findOne({email});
        } catch (error) {
            throw err;
        }
    }

    static async generateToken(tokenData, secretKey, jwt_expire){
        return jwt.sign(tokenData, secretKey,{expiresIn:jwt_expire}); //ส่งค่ากลับไป 3 และกลับดูไฟล์ user.controller.js
    }


}

module.exports = UserService;