//หลังจากสร้างการนำเข้าตัวแปรที่ user.service.js แล้ว เราต้องนำเข้าฟังก์ชั่นที่ทำไปในหน้านั้น มาใช้งานในหน้านี้ก่อน
const UserService = require('../services/user.services');


//เรามาสร้างฟังก์ชั่น ที่จัดการคำขอและตอบกลับด้านหน้า และส่งออก ของลงทะเบียน
exports.register = async(req, res, next)=>{
    try {
        //เราจะส่งข้อมูลบริการของเราเพื่อไปลงทะเบียน
        //รับเพื้อหาข้อมูลจาก req.body ของ email, password
        const {email, password} = req.body;
        
        //ตัวแปรว่าทำเสร็จรึยัง
        const successRes = await UserService.registerUser(email, password);

        //เมื่อลงทะเบียนเสร็จแล้ว เราจะต้องตอบกลับไปยังส่วนหน้า หรือส่วนแสดงผลของเรา
        //ซึ่งเราจะส่งตัวแปร สองตัวกลับไป ตัวแปรที่สถานะเป็น true และ ส่งข้อความกลับไปได้
        res.json({status:true,success: "User Registered Successfully"});

    } catch (err) {
        next (err);
    }
}


//เรามาสร้างฟังก์ชั่น ที่จัดการคำขอและตอบกลับด้านหน้า และส่งออก ของ login
exports.login = async(req, res, next)=>{
    try {
        //เราจะส่งข้อมูลบริการของเราเพื่อไปลงทะเบียน
        //รับเพื้อหาข้อมูลจาก req.body ของ email, password
        const {email, password} = req.body;
        console.log("-----",password);

        const user = await UserService.checkuser(email);
        console.log("--------------user-------------",email);

        if(!user){
            throw new Error('User dont exist');
        }

        const isMatch = await user.comparePassword(password);

        if(isMatch === false){//flase คือเท็จ หมายถึง รหัสผ่านที่ผู้ใช้ป้อนหน้า login ไม่ตรงกับ user ที่มีในระบบ
            throw new Error('Password InValid');

        
        }


        //ให้โทเค็นเราเท่ากับ _id ที่ได้จาก user._id และ email ได้จาก user.email
        let tokenData = {_id:user._id, email:user.email}; //หลังจากนี้เราจะเข้ารหัสมัน ใช้แพ็คเกจ JWT เพื่อส่งข้อมูลนี้ไปยัง user.services.js
        

        const token = await UserService.generateToken(tokenData, "secretKey", "24h");

        //สร้างตอบกลับไปที่หน้าแอพ Flutter 
        res.status(200).json({status:true, token:token});



    } catch (err) {
        next (err);
    }
}
