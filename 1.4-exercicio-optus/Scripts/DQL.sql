USE OPTUS
GO

SELECT *FROM ARTISTA

SELECT *FROM ALBUM

SELECT *FROM ESTILO

SELECT *FROM ALBUM_ESTILO 

SELECT *FROM USUARIO

--TODOS COM PERMISS�O DE ADM

SELECT nomeUsuario, emailUsuario FROM USUARIO
WHERE permissao = 1;
GO

--listar todos os �lbuns lan�ados ap�s um determinado ano de lan�amento

SELECT * FROM ALBUM 
WHERE dataLancamento > '2020-01-12';
GO

--LISTAR OS DADOS DE UM USUARIO PELO EMAIL

SELECT * FROM USUARIO
WHERE emailUsuario = 'astolfinhogameplay12@gmail.com'
GO

--LISTAR OS DADOS DE UM USUARIO PELA SENHA

SELECT * FROM USUARIO
WHERE senhaUsuario = 'mufshnfhydsnf'

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum

SELECT tituloAlbum, dataLancamento, nomeArtista, nomeEstilo FROM ALBUM
LEFT JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
LEFT JOIN ALBUM_ESTILO
ON ALBUM_ESTILO.idAlbum = ALBUM.idAlbum
LEFT JOIN ESTILO
ON ESTILO.idEstilo = ALBUM_ESTILO.idEstilo
WHERE ativo = 1;