require("dotenv").config(); 

const express = require("express");
const cors = require("cors");
const filmesRoutes = require("./src/routes/usersRoutes");

const app = express();
const PORT = 4057

app.use(cors());
app.use(express.json());

app.use ("/api", usersRoutes);

app.get("/", (req, res) => {
    res.send("Olá, domeneghetti por aquiii");
});

app.listen(PORT, () =>{
    console.log(`Servidor rodando na porta❤😁✌ ${PORT}`)
});