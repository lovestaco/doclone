const express = require("express");
const User = require("../models/user");

const authRouter = express.Router();

authRouter.get("/api/signup", async (req, res) => {});

authRouter.post("/api/signup", async (req, res) => {
  try {
    const { name, email, profilePic } = req.body;

    // email exists? update: insert
    let user = await User.findOne({ email });

    if (!user) {
      // create new user
      user = new User({
        email,
        name,
        profilePic,
      });
      user = await user.save();

      return res.json({ user });
    }
  } catch (e) {}
});
module.exports = authRouter;
