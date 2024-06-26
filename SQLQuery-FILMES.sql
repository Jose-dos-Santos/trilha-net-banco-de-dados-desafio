
--1
SELECT NOME, ANO FROM FILMES

--2
SELECT NOME, ANO FROM FILMES ORDER BY ANO

--3

SELECT NOME, ANO, DURACAO FROM FILMES WHERE NOME LIKE '%DE VOLTA PARA%'

--4 

SELECT * FROM FILMES WHERE ANO = 1997

--5

SELECT * FROM FILMES WHERE ANO > 2000


--6

SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 
ORDER BY DURACAO

--7

SELECT COUNT(DURACAO) QUANDITADEFILMES, ANO FROM FILMES
GROUP BY  ANO
ORDER BY QUANDITADEFILMES DESC


-- 8

SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'M'

-- 9

SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'F'
ORDER BY PRIMEIRONOME

--10

SELECT B.NOME, C.GENERO FROM FILMESGENERO A
INNER JOIN FILMES B ON A.IDFILME = B.ID
INNER JOIN GENEROS C ON A.IDGENERO = C.ID

--11

SELECT B.NOME, C.GENERO FROM FILMESGENERO A
INNER JOIN FILMES B ON A.IDFILME = B.ID
INNER JOIN GENEROS C ON A.IDGENERO = C.ID
WHERE C.GENERO = 'MIST�RIO'

--12

SELECT C.NOME, B.PRIMEIRONOME, B.ULTIMONOME, A.PAPEL FROM ELENCOFILME A
INNER JOIN ATORES B ON A.IDATOR = B.ID
INNER JOIN FILMES C ON IDFILME = C.ID