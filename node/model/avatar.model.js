const mongoose = require('mongoose');
const db = require('../config/db');

const { Schema } = mongoose;

const avatarSchema = new Schema({
    'avatarName':{
        type:String,
    },
    'avatarStory':{
        type:String,
    },
    'avatarPic':{
        type:String,
    }
});

const AvatarModel = db.model('avatar',avatarSchema);

module.exports = AvatarModel;
