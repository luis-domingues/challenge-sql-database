# Criação do banco de dados
	
CREATE DATABASE Filmes;
USE Filmes;

# Criação de tabelas
CREATE TABLE Atores (
    Id INT NOT NULL AUTO_INCREMENT,
    PrimeiroNome VARCHAR(20) NULL,
    UltimoNome VARCHAR(20) NULL,
    Genero VARCHAR(1) NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE ElencoFilme (
    Id INT NOT NULL AUTO_INCREMENT,
    IdAtor INT NOT NULL,
    IdFilme INT NULL,
    Papel VARCHAR(30) NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Filmes (
    Id INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NULL,
    Ano INT NULL,
    Duracao INT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE FilmesGenero (
    Id INT NOT NULL AUTO_INCREMENT,
    IdGenero INT NULL,
    IdFilme INT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Generos (
    Id INT NOT NULL AUTO_INCREMENT,
    Genero VARCHAR(20) NULL,
    PRIMARY KEY (Id)
);

# Inserindo valores nas tabelas
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (1, 'James', 'Stewart', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (2, 'Deborah', 'Kerr', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (3, 'Peter', 'OToole', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (4, 'Robert', 'DeNiro', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (6, 'Harrison', 'Ford', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (7, 'Stephen', 'Baldwin', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (8, 'Jack', 'Nicholson', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (9, 'Mark', 'Wahlberg', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (10, 'Woody', 'Allen', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (11, 'Claire', 'Danes', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (12, 'Tim', 'Robbins', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (13, 'Kevin', 'Spacey', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (14, 'Kate', 'Winslet', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (15, 'Robin', 'Williams', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (16, 'Jon', 'Voight', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (17, 'Ewan', 'McGregor', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (18, 'Christian', 'Bale', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (19, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (20, 'Dev', 'Patel', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (21, 'Sigourney', 'Weaver', 'F');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (22, 'David', 'Aston', 'M');
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero) VALUES (23, 'Ali', 'Astin', 'F');

INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES
    (1, 1, 'John Scottie Ferguson'),
    (2, 2, 'Miss Giddens'),
    (3, 3, 'T.E. Lawrence'),
    (4, 4, 'Michael'),
    (6, 6, 'Rick Deckard'),
    (7, 8, 'McManus'),
    (9, 10, 'Eddie Adams'),
    (10, 11, 'Alvy Singer'),
    (11, 12, 'San'),
    (12, 13, 'Andy Dufresne'),
    (13, 14, 'Lester Burnham'),
    (14, 15, 'Rose DeWitt Bukater'),
    (15, 16, 'Sean Maguire'),
    (16, 17, 'Ed'),
    (17, 18, 'Renton'),
    (19, 20, 'Elizabeth Darko'),
    (20, 21, 'Older Jamal'),
    (21, 22, 'Ripley'),
    (13, 23, 'Bobby Darin'),
    (8, 9, 'J.J. Gittes'),
    (18, 19, 'Alfred Borden');

INSERT INTO Filmes (Id, Nome, Ano, Duracao) VALUES
    (1, 'Um Corpo que Cai', 1958, 128),
    (2, 'Os Inocentes', 1961, 100),
    (3, 'Lawrence da Arábia', 1962, 216),
    (4, 'O Franco Atirador', 1978, 183),
    (5, 'Amadeus', 1984, 160),
    (6, 'Blade Runner', 1982, 117),
    (7, 'De Olhos Bem Fechados', 1999, 159),
    (8, 'Os Suspeitos', 1995, 106),
    (9, 'Chinatown', 1974, 130),
    (10, 'Boogie Nights - Prazer Sem Limites', 1997, 155),
    (11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93),
    (12, 'Princesa Mononoke', 1997, 134),
    (13, 'Um Sonho de Liberdade', 1994, 142),
    (14, 'Beleza Americana', 1999, 122),
    (15, 'Titanic', 1997, 194),
    (16, 'Gênio Indomável', 1997, 126),
    (17, 'Amargo pesadelo', 1972, 109),
    (18, 'Trainspotting - Sem Limites', 1996, 94),
    (19, 'O Grande Truque', 2006, 130),
    (20, 'Donnie Darko', 2001, 113),
    (21, 'Quem Quer Ser um Milionário?', 2008, 120),
    (22, 'Aliens, O Resgate', 1986, 137),
    (23, 'Uma Vida sem Limites', 2004, 118),
    (24, 'Avatar', 2009, 162),
    (25, 'Coração Valente', 1995, 178),
    (26, 'Os Sete Samurais', 1954, 207),
    (27, 'A Viagem de Chihiro', 2001, 125),
    (28, 'De Volta para o Futuro', 1985, 116);

INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES
    (1, 22),
    (2, 17),
    (2, 3),
    (3, 12),
    (5, 11),
    (6, 8),
    (6, 13),
    (7, 26),
    (7, 28),
    (7, 18),
    (7, 21),
    (8, 2),
    (9, 23),
    (10, 7),
    (10, 27),
    (10, 1),
    (11, 14),
    (12, 6),
    (13, 4);

INSERT INTO Generos (Id, Genero) VALUES
    (1, 'Ação'),
    (2, 'Aventura'),
    (3, 'Animação'),
    (4, 'Biografia'),
    (5, 'Comédia'),
    (6, 'Crime'),
    (7, 'Drama'),
    (8, 'Horror'),
    (9, 'Musical'),
    (10, 'Mistério'),
    (11, 'Romance'),
    (12, 'Suspense'),
    (13, 'Guerra');
