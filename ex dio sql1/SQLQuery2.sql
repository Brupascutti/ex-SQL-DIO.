select * from Filmes, Atores, ElencoFilme
--1
select Nome, Ano from Filmes
--2
select Nome, Ano from Filmes
order by Ano
--3
select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro'
--4
select Nome, Ano, Duracao from Filmes
where Ano = 1997
--5
select Nome, Ano, Duracao from Filmes
where Ano > 2000
--6
select Nome, Ano, Duracao from Filmes
where Duracao > 100 AND Duracao < 150
order by Duracao
--7
select Ano, count(Ano) Quantidade from Filmes	
group by Ano
order by Quantidade desc
--8
select * from Atores
where Genero = 'M'
--9
select * from Atores
where Genero = 'F'
order by PrimeiroNome
--10
select Filmes.Nome, Generos.Genero from FilmesGenero
inner join Generos on Generos.Id = FilmesGenero.IdGenero
inner join Filmes on Filmes.Id = FilmesGenero.IdFilme
--11
select Filmes.Nome, Generos.Genero from FilmesGenero
inner join Generos on Generos.Id = FilmesGenero.IdGenero
inner join Filmes on Filmes.Id = FilmesGenero.IdFilme
where Genero = 'Mistério'
--12
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from Filmes
inner join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
inner join Atores on Atores.Id = ElencoFilme.IdAtor AND Atores.Id = ElencoFilme.IdAtor



