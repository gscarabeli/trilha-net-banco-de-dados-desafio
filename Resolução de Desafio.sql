--Desafios de Projeto

use Filmes
----------------------------------------------------------------------------------------------------------------------------------
--1 - Buscar o nome e ano dos filmes:
select Nome, Ano from Filmes
----------------------------------------------------------------------------------------------------------------------------------
--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano: 
--Obs. Mesmo n�o tendo a coluna "Duracao" no enunciado coloquei ela mesmo assim dentro do select pois estava na imagem...

select Nome, Ano, Duracao from Filmes
order by Ano asc
----------------------------------------------------------------------------------------------------------------------------------
--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o:
select Nome, Ano, Duracao from Filmes
where Nome like 'De Volta para o Futuro'
----------------------------------------------------------------------------------------------------------------------------------
--4 - Buscar os filmes lan�ados em 1997:
--Obs. Mesmo n�o tendo no enunciado, retorno todas as colunas menos a coluna "Id"
select Nome, Ano, Duracao from Filmes
where Ano = 1997
----------------------------------------------------------------------------------------------------------------------------------
--5 - Buscar os filmes lan�ados AP�S o ano 2000
--Obs. Mesmo n�o tendo no enunciado, retorno todas as colunas menos a coluna "Id"
select Nome, Ano, Duracao from Filmes
where Ano > 2000
----------------------------------------------------------------------------------------------------------------------------------
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente:
--Obs. Mesmo n�o tendo no enunciado, retorno todas as colunas menos a coluna "Id"
select Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc
----------------------------------------------------------------------------------------------------------------------------------
--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente:
/* Obs. Mesmo o enunciado dizendo que o resultado deve ser ordenado pela coluna "Duracao", ordenei pela coluna "Quantidade",
pois foi a que mais fez sentido, levando em considera��o a imagem do retorno do exerc�cio*/

select Ano, count(*) as Quantidade from Filmes
group by Ano
order by Quantidade desc
----------------------------------------------------------------------------------------------------------------------------------
--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome:
/* Mesmo a imagem do exerc�cio tendo as colunas "Id" e "Genero" como retorno, segui o enunciado e s� retornei 
as colunas "PrimeiroNome" e "UltimoNome" */

select PrimeiroNome, UltimoNome from Atores
where Genero like 'M'
----------------------------------------------------------------------------------------------------------------------------------
--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:
/* Mesmo a imagem do exerc�cio tendo as colunas "Id" e "Genero" como retorno, segui o enunciado e s� retornei 
as colunas "PrimeiroNome" e "UltimoNome" */

select PrimeiroNome, UltimoNome from Atores
where Genero like 'F'
order by PrimeiroNome
----------------------------------------------------------------------------------------------------------------------------------
--10 - Buscar o nome do filme e o g�nero:
select f.Nome, g.Genero from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id
----------------------------------------------------------------------------------------------------------------------------------
--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio":
select f.Nome, g.Genero from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on fg.IdGenero = g.Id
where g.Genero like 'Mist�rio'
----------------------------------------------------------------------------------------------------------------------------------
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
inner join ElencoFilme ef on ef.IdFilme = f.Id
inner join Atores a on a.Id = ef.IdAtor
----------------------------------------------------------------------------------------------------------------------------------