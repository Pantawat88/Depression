const app = require('./app');
const db = require('./config/db');
const UserModel = require('./model/user.model');
const HistoryModel = require('./model/history.model');


const port = 3000;

app.get('/',(req,res) => {
    res.send("Hello Wolrd!!!!!.....!!!!");
});

app.listen(port, ()=>{
    console.log(`Server Listening on Port http://localhost:${port}`);
});


