--1
SELECT nome, ano FROM filmes
--2
SELECT nome, ano FROM filmes ORDER BY ano
--3
SELECT nome, ano, duracao FROM filmes WHERE nome = 'De Volta para o Futuro'
--4
SELECT * from filmes WHERE ano = 1997
--5
SELECT * from filmes WHERE ano > 2000
--6
SELECT * FROM filmes WHERE duracao > 100 AND duracao < 150
order by duracao
--7
SELECT Ano, Contagem FROM (
    SELECT Ano, COUNT(*) AS Contagem
    FROM Filmes
    GROUP BY Ano
) subquery
ORDER BY Contagem DESC;
--8
SELECT primeironome, ultimonome, genero FROM atores WHERE genero = 'M'
--9
SELECT primeironome, ultimonome, genero FROM atores WHERE genero = 'F'
ORDER BY primeironome
--10
SELECT filmes.nome, generos.genero FROM filmesgenero INNER JOIN filmes
ON filmes.id = filmesgenero.idfilme INNER JOIN generos
ON generos.id = filmesgenero.idgenero
--11
SELECT filmes.nome, generos.genero FROM filmesgenero INNER JOIN filmes
ON filmes.id = filmesgenero.idfilme INNER JOIN generos
ON generos.id = filmesgenero.idgenero WHERE genero = 'Mistério'
--12
SELECT filmes.nome, atores.primeironome, atores.ultimonome, papel
FROM elencofilme INNER JOIN filmes
ON filmes.id = elencofilme.idfilme INNER JOIN atores
ON atores.id = elencofilme.idator