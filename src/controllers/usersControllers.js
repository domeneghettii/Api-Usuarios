const User = require('../models/User');
const UserList = require("../models/UserList");

const lista = new UserList();

lista.addUser(new User("Luana Domeneghetti", "luana@gmail.com", 19));
lista.addUser(user1);

lista.addUser(new User("Beatriz Lima", "bealima@gmail.com", 23));

const router = {

    getAllUsers: (req, res) => {
        try {
            const users = lista.getAllUsers();
            res.status(200).json(users);
        } catch (error) {
            res.status(404).json({message: 'Erro ao buscar Usuários',error});
        }
    },

    getUserById: (req, res) => {
        try {
            const id = req.params.id;
        res.json(lista.getUserById(req.params.id));
        } catch (error) {
        res.status(404).json({
            message: 'Erro ao buscar Usuário por id!'
        });
        }
    },

    addUsers: (req, res) => {
        try {
            const { name, email, age } = req.body;
            if(!name || !email || !age) {
                throw new Error('Preencher todos os campos!')
            }
            const usuario = new User (name, email, age)
            lista.addUser(usuario);
            res.status(200).json({message: "Usuário criado com sucesso ;)"});
        } catch (error) {
            res.status(400).json({message: "Erro ao criar Usuário :(", error});
        }
    },

    updateUser: (req, res) => {
        try {
            res.json(lista.updateUser(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({ message: "Erro ao atualizar o usuário", error });
        }
        },

        deleteUser: (req, res) => {
            try {
                lista.deleteUser(req.params.id);
                res.status(200).json({
                    message: 'Usuário deletado com sucesso!!'
                })
            } catch (error) {
                res.status(404).json('Erro ao deletar Usuário :(', error);
            }
        },
    };

        module.exports = router;

        
    
    

