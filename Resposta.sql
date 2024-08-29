# Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM filmes;

# Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM filmes ORDER BY Ano;

# Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM filmes WHERE Nome = 'DE VOLTA PARA O FUTURO';

# Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano = '1997';

# Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM filmes WHERE Ano > '2000';

# Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM filmes WHERE Duracao > '100' && Duracao < '150' ORDER BY Duracao;

# Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT  Ano,COUNT(*) AS Quantidade FROM Filmes GROUP BY  Ano ORDER BY Quantidade DESC;

# Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

# Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

# Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero FROM Filmes F JOIN FilmesGenero Fg ON F.Id = Fg.IdFilme JOIN Generos G ON Fg.IdGenero = G.Id;

# Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome AS NomeFilme, F.Genero AS Genero FROM Filmes F JOIN FilmesGenero Fg ON F.Id = Fg.IdFilme JOIN Generos G ON Fg.IdGenero = G.Id WHERE G.Genero = 'Mistério';

# Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM filmes F JOIN ElencoFilme E ON F.Id = E.IdFilme JOIN Atores A ON E.IdAtor = A.Id;
