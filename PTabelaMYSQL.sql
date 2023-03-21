CREATE DATABASE cadastros
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS pessoas(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('m', 'f'),
    peso DECIMAL(5,2),
    altura DECIMAL(3, 2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'm', '78.5', '1.83', 'Brasil'),
('Maria', '1994-05-26', 'f', '85.3', '1.69', DEFAULT);

SELECT * FROM pessoas;