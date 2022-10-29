const express = require("express");
const mongoose = require("mongoose");

const PORT = process.env.PORT | 3001;

const app = express();

const DB =
  "mongodb+srv://doclone:doclone@cluster0.xdr8tzp.mongodb.net/?retryWrites=true&w=majority";

mongoose
  .connect(DB)
  .then(() => console.log("Mongo conn success"))
  .catch((e) => console.log("Mongo error ", e));

app.listen(PORT, "0.0.0.0", function () {
  console.log(`connected at port ${PORT}`);
  console.log(" ");
});
