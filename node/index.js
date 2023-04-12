const app = require('./app');
const db = require('./config/db');
const AvatarModel = require('./model/avatar.model');

const port = 3000;

app.get('/',(req,res) => {
    res.send("Hello World !!!!!!!!!!  haha")
});

app.listen(port,() => {
    console.log('Connected to server at http://localhost:3000');
});