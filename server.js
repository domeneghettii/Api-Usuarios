require("dotenv").config(); 

const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");
const postsRoutes = require("./src/routes/postsRoutes");

const app = express();
const PORT = process.env.PORT || 5082;

app.use(cors());
app.use(express.json());

app.use ("/api", usersRoutes);
app.use ("/api", postsRoutes);

app.get("/", (req, res) => {
    res.send("Olá, domeneghetti por aquiii");
});

app.listen(PORT, () =>{
    console.log(`Servidor rodando na porta❤😁✌ ${PORT}`)
});