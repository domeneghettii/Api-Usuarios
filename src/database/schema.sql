CREATE DATABASE usuarios;

\c usuarios;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO user (name, email, password) VALUES 
    ('Anna Beatriz Valetim', 'AnnaV@gmail.com', 'amods'),
    ('Beatriz Lima', 'Bealima@gmail.com', 'amods'),
    ('Luana', 'lulud@gmail.com', 'amods');

INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteúdo do post 1', 1),
    ('Post 2', 'Conteúdo do post 2', 2),
    ('Post 3', 'Conteúdo do post 3', 3);