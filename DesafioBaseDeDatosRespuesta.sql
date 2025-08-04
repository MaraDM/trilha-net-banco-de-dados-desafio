-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT * FROM Filmes 
ORDER BY Ano ASC;

--3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--4
SELECT * FROM Filmes
WHERE Ano = '1997';

--5
SELECT * FROM Filmes
WHERE Ano > '2000';

--6
SELECT * FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7 O repositorio de github tem um erro, para que fique igual que o exemplo tem que ser ordenado pela quantidade em ordem decrescente não pela duracão
SELECT Ano, 
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT * FROM Atores
WHERE Genero = 'M';

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;

