const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");

const PORT = process.env.PORT | 3001;

const app = express();

app.use(express.json());
app.use(authRouter);

const DB =
  "mongodb+srv://doclone:doclone@cluster0.xdr8tzp.mongodb.net/?retryWrites=true&w=majority";

mongoose
  .connect(DB)
  .then(() => {
    console.log("Mongo conn success");
    console.log(" ");
  })
  .catch((e) => console.log("Mongo error ", e));

app.listen(PORT, "0.0.0.0", function () {
  console.log(`connected at port ${PORT}`);
});
