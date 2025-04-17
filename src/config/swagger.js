const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');

const setupSwagger = (app) => {
    const swaggerOptions = {
        swaggerDefinition: {
            info: {
                title: "API de Usuários",
                version: "1.0.0",
                description: "Documentação da API de Usuários"
            },
        },
        apis: ["./src/routes/*.js"], // Ajuste conforme a estrutura do seu projeto
    };

    const swaggerDocs = swaggerJsDoc(swaggerOptions);
    app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));
};

module.exports = setupSwagger;
