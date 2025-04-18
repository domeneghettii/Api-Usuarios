require("dotenv").config();
const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");
const postRoutes = require("./src/routes/postRoutes");
const setupSwagger = require('./src/config/swagger'); // Caminho correto para o arquivo


const path = require("path");

const app = express();
app.use(cors());
app.use(express.json());
setupSwagger(app); // Ativa o Swagger

app.use('/api', usersRoutes);
app.use('/api', postRoutes);
app.use("/uploads", express.static(path.join(__dirname, "uploads")));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta http://localhost:${PORT}`);
});
