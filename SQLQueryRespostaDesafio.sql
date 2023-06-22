SELECT * FROM Atores;

SELECT * FROM ElencoFilme;

SELECT * FROM Filmes;

SELECT * FROM FilmesGenero;

SELECT * FROM Generos;

-------  1 ------

Select 
	Nome,
	Ano
FROM
	Filmes

------ 2 -------	

SELECT 
	Nome,
	Ano,
	Duracao
FROM
	Filmes
Order by Ano ASC

-----------------

------  3 ------

SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Nome = 'De Volta para o Futuro'

-----------------

------  4 ------

SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Ano = 1997

-----------------

------  5 ------


SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Ano > 2000

-----------------

------  6 ------


SELECT 
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Duracao > 100 AND Duracao < 250
ORDER By Duracao ASC

-----------------

------  7 ------


select 
	Ano, 
	count( * ) Quantidade 
from Filmes
group by Ano 
order by Quantidade desc

-----------------

------  8 ------

SELECT 
*
FROM
Atores 
Where Genero = 'M'

-----------------

------  9 ------

SELECT 
*
FROM
Atores 
Where Genero = 'F'
Order By PrimeiroNome

-----------------

------  10 ------

SELECT 
	FIlmes.Nome,
	Generos.Genero
FROM
Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-----------------

------  11 ------

SELECT 
	FIlmes.Nome,
	Generos.Genero
FROM
Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'


-----------------

------  12 ------

SELECT 
	FIlmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
Filmes
INNER JOIN ElencoFilme ON  ElencoFilme.Id = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


