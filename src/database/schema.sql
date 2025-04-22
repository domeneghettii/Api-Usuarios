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

    INSERT INTO users (name, email, age) VALUES 
    ('Ana Silva', 'ana.silva@email.com', 28),
    ('Carlos Pereira', 'carlos.pereira@email.com', 35),
    ('Beatriz Souza', 'beatriz.souza@email.com', 24),
    ('Lucas Costa', 'lucas.costa@email.com', 30),
    ('Juliana Almeida', 'juliana.almeida@email.com', 40),
    ('Pedro Oliveira', 'pedro.oliveira@email.com', 33),
    ('Mariana Santos', 'mariana.santos@email.com', 27),
    ('Rafael Rocha', 'rafael.rocha@email.com', 31),
    ('Fernanda Lima', 'fernanda.lima@email.com', 25),
    ('Gabriel Martins', 'gabriel.martins@email.com', 26),
    ('Paula Ribeiro', 'paula.ribeiro@email.com', 29),
    ('Thiago Mendes', 'thiago.mendes@email.com', 32),
    ('Luana Costa', 'luana.costa@email.com', 22),
    ('Felipe Oliveira', 'felipe.oliveira@email.com', 34),
    ('Jéssica Souza', 'jessica.souza@email.com', 31),
    ('Eduardo Almeida', 'eduardo.almeida@email.com', 38),
    ('Roberta Pinto', 'roberta.pinto@email.com', 27),
    ('Marcelo Silva', 'marcelo.silva@email.com', 36),
    ('Tatiane Costa', 'tatiane.costa@email.com', 29),
    ('Victor Rocha', 'victor.rocha@email.com', 31),
    ('Isabela Pereira', 'isabela.pereira@email.com', 25),
    ('Felipe Santos', 'felipe.santos@email.com', 40),
    ('Lucas Almeida', 'lucas.almeida@email.com', 27),
    ('Larissa Silva', 'larissa.silva@email.com', 30),
    ('Ricardo Pinto', 'ricardo.pinto@email.com', 36),
    ('Cristiane Oliveira', 'cristiane.oliveira@email.com', 28),
    ('João Souza', 'joao.souza@email.com', 34),
    ('Vanessa Santos', 'vanessa.santos@email.com', 31),
    ('Marcos Costa', 'marcos.costa@email.com', 33),
    ('Aline Pereira', 'aline.pereira@email.com', 32),
    ('Rodrigo Rocha', 'rodrigo.rocha@email.com', 35),
    ('Carla Almeida', 'carla.almeida@email.com', 25),
    ('Vinícius Lima', 'vinicius.lima@email.com', 39),
    ('Juliana Oliveira', 'juliana.oliveira@email.com', 28),
    ('Sérgio Santos', 'sergio.santos@email.com', 29),
    ('Mariana Ribeiro', 'mariana.ribeiro@email.com', 24),
    ('Rodrigo Almeida', 'rodrigo.almeida@email.com', 31),
    ('Gabriela Costa', 'gabriela.costa@email.com', 33),
    ('Leandro Souza', 'leandro.souza@email.com', 30),
    ('Tânia Pinto', 'tania.pinto@email.com', 26),
    ('Alexandre Lima', 'alexandre.lima@email.com', 35),
    ('Simone Costa', 'simone.costa@email.com', 37),
    ('Tiago Oliveira', 'tiago.oliveira@email.com', 32),
    ('Luana Santos', 'luana.santos@email.com', 26),
    ('Renata Ribeiro', 'renata.ribeiro@email.com', 40),
    ('Gilberto Costa', 'gilberto.costa@email.com', 33),
    ('Kelly Silva', 'kelly.silva@email.com', 29),
    ('Eduardo Rocha', 'eduardo.rocha@email.com', 34),
    ('Aline Lima', 'aline.lima@email.com', 27),
    ('João Oliveira', 'joao.oliveira@email.com', 31),
    ('Bruna Santos', 'bruna.santos@email.com', 32),
    ('Fábio Pinto', 'fabio.pinto@email.com', 33),
    ('Patrícia Costa', 'patricia.costa@email.com', 25),
    ('Caio Souza', 'caio.souza@email.com', 28);

    INSERT INTO posts (user_id, description, add_person, localization) VALUES
    (1, 'flores', '@rosas', 'Valinhos-SP'),
    (2,'favorite movie', '@barbie', 'Valinhos-SP'),
    (3, 'books', '@amoremjogo', 'Library');




