const mongoose = require('mongoose');
const db = require('../config/db');

const { Schema } = mongoose;

const userSchema = new Schema({
    userFName:{
        type:String,
    },
    userLName:{
        type:String,
    },
    userNickName:{
        type:String,
    },
    userBirthdayDate:{
        type:Date,
    },
    userFaculty:{
        type:String,
    },
    userEmail:{
        type:String,
    },
    userPassword:{
        type:String,
    },
    avatarID:{
        type:String,
    }
});

const UserModel = db.model('user',userSchema);

module.exports = UserModel;