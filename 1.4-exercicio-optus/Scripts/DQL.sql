USE OPTUS
GO

SELECT *FROM ARTISTA

SELECT *FROM ALBUM

SELECT *FROM ESTILO

SELECT *FROM ALBUM_ESTILO 

SELECT *FROM USUARIO

--TODOS COM PERMISSÃO DE ADM

SELECT nomeUsuario, emailUsuario FROM USUARIO
WHERE permissao = 1;
GO

--listar todos os álbuns lançados após um determinado ano de lançamento

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

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum

SELECT tituloAlbum, dataLancamento, nomeArtista, nomeEstilo FROM ALBUM
LEFT JOIN ARTISTA
ON ARTISTA.idArtista = ALBUM.idArtista
LEFT JOIN ALBUM_ESTILO
ON ALBUM_ESTILO.idAlbum = ALBUM.idAlbum
LEFT JOIN ESTILO
ON ESTILO.idEstilo = ALBUM_ESTILO.idEstilo
WHERE ativo = 1;