🚀 API-USUÁRIOS

Uma API simples para gerenciar usuários, permitindo operações como listar, adicionar, atualizar e deletar usuários.

📌 Funcionalidades
	•	📋 Listar usuários
	•	➕ Adicionar um novo usuário
	•	🔍 Buscar usuário por ID
	•	✏️ Atualizar informações do usuário
	•	❌ Deletar usuário

🛠️ Tecnologias Utilizadas
	•	Node.js
	•	Express
	•	Dotenv
	•   Uuid
	•   Cors


📂 Estrutura do Projeto

API-USUÁRIOS
│── img/                     
│── node_modules/             
│── src/
│   ├── controllers/          
│   │   ├── usersControllers.js
│   ├── models/               
│   │   ├── User.js
│   │   ├── UserList.js
│   ├── routes/              
│   │   ├── usersRoutes.js
│── .env                      
│── .gitignore                 
│── package.json               
│── package-lock.json          
│── README.md                  
│── server.js                  

🚀 Como Executar

1️⃣ Pré-requisitos

Antes de começar, você precisa ter o Node.js instalado na sua máquina.

2️⃣ Instale as dependências

npm install

3️⃣ Configure as variáveis de ambiente

Crie um arquivo .env na raiz do projeto e adicione as configurações necessárias, como a URL do banco de dados.

4️⃣ Execute o servidor

npm start

O servidor estará rodando em http://localhost:3000 (ou a porta configurada no seu ambiente).

📌 Endpoints

➤ Listar todos os usuários

GET /usuarios

➤ Buscar usuário por ID

GET /usuarios/:id

➤ Adicionar um novo usuário

POST /usuarios

📌 Corpo da requisição (JSON)

{
  "nome": "João Silva",
  "email": "joao@email.com"
}

➤ Atualizar usuário

PUT /usuarios/:id

📌 Corpo da requisição (JSON)

{
  "nome": "João Silva",
  "email": "joao@email.com"
}

➤ Deletar usuário

DELETE /usuarios/:id
