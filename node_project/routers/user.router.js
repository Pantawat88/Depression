//หลังจากที่ทำส่วน user.controller.js เสร็จ
//เราจะมาสร้าง API ที่เป็นการลงทะเบียน
//ก่อนทำต้อง import Express Library ก่อน

const UserController = require('../controller/user.controller'); //import หน้ามันมาแล้ว 

// เรียกใช้ express ใน router
const router = require("express").Router();

//ตั้งชื่อ API เป็น registration และต้องเรียกฟังก์ชั่นในส่วนการลงทะเบียนใน controller เลยต้อง import หน้ามันมา
//เรามีการเรียกใช้ฟังก์ชั่น UserController.register มา
router.post("/registration",UserController.register); //API การลงทะเบียน
router.post("/login",UserController.login); //API login

//export ไปที่ router และไปที่ไฟล์ app.js เพื่อกำหนดค่า API ที่นั้น
module.exports = router;