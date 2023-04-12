const mongoose = require('mongoose');

mongoose.connect('mongodb+srv://aceso-admin:m8WkZMbSriXa3Vfp@cluster0.6dll6is.mongodb.net/acesodb', {
  useNewUrlParser: true,
  useUnifiedTopology: true
}).then(() => {
  console.log("MongoDB Connected");
}).catch((error) => {
  console.log("MongoDB connection error", error);
});

module.exports = mongoose.connection;

