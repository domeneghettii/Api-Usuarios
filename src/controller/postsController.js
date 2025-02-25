const Post = require("../models/Post");
const PostList = require("../models/PostList");

const lista = new PostList();

const post1 = new Post(1136, "Outer Banks", "A série se concentra na trajetória de um grupo de adolescentes residentes na Carolina do Norte, que se autodenominam Pogues.", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.techtudo.com.br%2Flistas%2F2023%2F02%2Fouter-banks-conheca-personagens-e-elenco-da-serie-da-netflix-streaming.ghtml&psig=AOvVaw2_YsluQrSJY0yvqAMJV3C7&ust=1740573419579000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIDRxLXr3osDFQAAAAAdAAAAABAE", 5000, "Muito bom, amo essa série!!");
lista.addPost(post1);

lista.addPost( new Post(2810, "The Vampire Diaries", "A série segue a vida de Elena Gilbert (Nina Dobrev), uma jovem estudante de 17 anos, que após perder seus pais em um acidente de carro, começou a lidar com o luto e a tristeza. Elena se apaixona por um vampiro chamado Stefan Salvatore (Paul Wesley) e os dois começam um relacionamento.", "https://www.google.com/url?sa=i&url=https%3A%2F%2Freportersombra.com%2Fthe-vampire-diaries-diarios-de-um-vampiro%2F&psig=AOvVaw2BctFjPvK_ZZoA0cfXmBzI&ust=1740573674780000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCwxq7s3osDFQAAAAAdAAAAABAE", 7000, "Maravilhoso, mas delena perdeu a química no final..." ));

const router = {
    getAllPosts: (req, res) => {
        try {
            const posts = lista.getAllPosts();
            res.status(200).json(posts);
        } catch (error) {
            res.status(404).json({message: "Erro ao buscar post !", error});
        }
    },

    getPostById: (req, res) => {
        try {
            const post = lista.getPostById(req.params.id);
            res.status(200).json(post);
        } catch (error) {
            res.status(404).json({message: "Post não encontrado!", error});
        }
    },

    addPost: (req, res) => {
        try {
            const { id, title, description, url, like, coments} = req.body;
            if (!id || !title || !description || !url || like, coments === undefined) {
                throw new Error("preencha todos os campos!!");
            }
            const newPost = new Post(id, title, description, url, like, coments);
            lista.addPost(newPost);
            res.status(200).json({message: "Post criado com sucesso :) "});
        } catch (error) {
            res.status(400).json({message: "Erro ao adicionar post !", error});
        }
    },

    updatePost: (req, res) => {
        try {
            const updatedPost = lista.updatePost(req.params.id, req.body);
            res.status(200).json(updatedPost);
        } catch (error) {
            res.status(404).json({message: "erro ao atualizar post :(", error});
        }
    },

    deletePost: (req, res) => {
        try {
            lista.deletePost(req.params.id);
            lista.deletePost(200).json({message: "Post deletado com sucesso", IdDeletado: req.params.id});
        } catch (error) {
            res.status(404).json({message: "Erro ao deletar post :(", error});
        }
    },

    deletePost: (req, res) => {
        try {
            lista.deletePost(req.params.id);
            lista.deletePost(200).json({message: "Post deletado com sucesso", IdDeletado: req.params.id});
        } catch (error) {
            res.status(404).json({message: "Erro ao deletar post :(", error});
        }
    },
}

module.exports = router;
