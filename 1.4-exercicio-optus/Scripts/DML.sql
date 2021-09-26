USE OPTUS
GO

INSERT INTO ARTISTA(nomeArtista)
VALUES
('justin baby'),
('rodigo olivo'),
('má dona'),
('xuxa')
GO

INSERT INTO ALBUM(tituloAlbum, dataLancamento, ativo, idArtista)
VALUES
('pra mexer o esqueleto', '21/02/2020', 1, 4),
('mexer e mexer', '12/05/2008', 0, 1),
('so os bois', '30/10/21', 1, 2),
('funk pra baixinhos', '02/04/2010', 0, 3)
GO

INSERT INTO ESTILO(nomeEstilo)
VALUES
('rock na veia'),
('funk'),
('sertanejo')
GO

INSERT INTO ALBUM_ESTILO(idAlbum, idEstilo)
VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 2)
GO

INSERT INTO USUARIO(nomeUsuario, emailUsuario, senhaUsuario, permissao)
VALUES
('astolfo', 'astolfinhogameplay12@gmail.com', 'mufshnfhydsnf', 0),
('amanda', 'amandinhalinda@gmail.com', 'i6o78otgu', 1)
GO
