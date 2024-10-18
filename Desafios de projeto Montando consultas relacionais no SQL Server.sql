--1
SELECT
	Nome,
	Ano
FROM FILMES

--2
SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
Order by Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT
	*
FROM Filmes
WHERE Ano = 1997

--5
SELECT
	*
FROM Filmes
WHERE Ano > 2000

--6
SELECT
	*
FROM Filmes
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao

--7
SELECT
	Ano,
	COUNT(Ano) AS 'Quantidade'
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC

--8
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE GENERO = 'F'

--10
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


--11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero= Generos.id
WHERE Generos.Genero = 'Mistério'

--12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id