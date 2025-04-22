CREATE DATABASE usuarios;

\c usuarios;

CREATE DATABASE usuarios;

\c usuarios;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INTEGER NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    description TEXT NOT NULL,
    add_person VARCHAR(255),
    localization VARCHAR(255)
);

INSERT INTO users (name, email, age) VALUES 
    ('Anna Beatriz Valetim', 'AnnaV@gmail.com', 17),
    ('Beatriz Lima', 'Bealima@gmail.com', 17),
    ('Luana', 'lulud@gmail.com', 17);


INSERT INTO posts (user_id, description, add_person, localization) VALUES
(1, 'flores', '@rosas', 'Valinhos-SP'),
(2,'favorite movie', '@barbie', 'Valinhos-SP'),
(3, 'books', '@amoremjogo', 'Library');


