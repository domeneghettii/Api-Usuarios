const express = require("express");
const router = express.Router();
const filmeController = require("../controllers/usersControllers");

router.get("/users", userController.getAllusers);
router.post("/users", userController.adduser);
router.put("/users/:id", userController.updateuser);
router.delete("/users/:id", userController.deleteuser);
router.get("/users/:id", userController.getuserById);