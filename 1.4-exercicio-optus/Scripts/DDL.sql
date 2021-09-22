CREATE DATABASE OPTUS
GO

USE OPTUS
GO

CREATE TABLE ARTISTA(
    idArtista INT PRIMARY KEY IDENTITY,
	nomeArtista VARCHAR(75) NOT NULL
);
GO

CREATE TABLE ALBUM(
    idAlbum INT PRIMARY KEY IDENTITY,
	idArtista INT FOREIGN KEY REFERENCES ARTISTA(idArtista),
	tituloAlbum VARCHAR(100) NOT NULL,
	dataLancamento DATE,
	ativo bit
);
GO

CREATE TABLE ESTILO(
    idEstilo INT PRIMARY KEY IDENTITY,
	nomeEstilo VARCHAR(50) NOT NULL,
);
GO

CREATE TABLE ALBUM_ESTILO(
    idAlbum INT FOREIGN KEY REFERENCES ALBUM(idAlbum),
	idEstilo INT FOREIGN KEY REFERENCES ESTILO(idEstilo)
);
GO

CREATE TABLE USUARIO(
    idUsuario INT PRIMARY KEY IDENTITY,
	nomeUsuario VARCHAR(50) NOT NULL,
	emailUsuario VARCHAR(200) NOT NULL UNIQUE,
	senhaUsuario VARCHAR(50) NOT NULL,
	permissao VARCHAR(100) NOT NULL
);
GO