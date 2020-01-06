IF OBJECT_ID ('dbo.Formation') IS NOT NULL
	DROP TABLE dbo.Formation
GO

CREATE TABLE dbo.Formation
	(
	Id          INT IDENTITY NOT NULL,
	Nom         VARCHAR (100) NOT NULL,
	Url         VARCHAR (500),
	Description VARCHAR (1000) NOT NULL,
	NomSeo      VARCHAR (100),
	PRIMARY KEY (Id)
	)
GO


IF OBJECT_ID ('dbo.Avis') IS NOT NULL
	DROP TABLE dbo.Avis
GO

CREATE TABLE dbo.Avis
	(
	Id          INT IDENTITY NOT NULL,
	Nom         VARCHAR (100) NOT NULL,
	Description VARCHAR (500),
	Note        FLOAT NOT NULL,
	IdFormation INT NOT NULL,
	DateAvis    DATETIME2 NOT NULL,
	UserId      NVARCHAR (128) NOT NULL,
	PRIMARY KEY (Id),
	CONSTRAINT FK__Avis__IdFormatio__15502E78 FOREIGN KEY (IdFormation) REFERENCES dbo.Formation (Id)
	)
GO


INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Créer votre site web avec ASP.NET MVC', 'http://www.udemy.com/asp-net-mvc', 'Grace à cette formation vous aurez tous les outils pour créer rapidement votre propre site web avec ASP.NET MVC et Bootstrap', 'asp-net-mvc')
GO

INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Boostez votre productivité !', 'http://www.udemy.com/productivite', 'Tout pour augmenter votre productivité. Devenez 2 fois plus productif grace à notre méthode !', 'formation-productivite')
GO

INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Créez un superbe potager', 'http://www.udemy.com/potager', 'Grace à cette formation vous aurez tous les outils pour créer rapidement votre propre potager', 'potager')
GO

INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Boostez votre mémoire !', 'http://www.udemy.com/drone', 'Tout pour augmenter votre mémoire grace à notre méthode !', 'formation-memoire')
GO

INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Créer votre propre drone !', 'http://www.udemy.com/drone', 'Grace à cette formation vous aurez tous les outils pour créer rapidement votre propre drone', 'drone')
GO

INSERT INTO dbo.Formation (Nom, Url, Description, NomSeo)
VALUES ('Triplez votre productivité !', 'http://www.udemy.com/productivite', 'Tout pour augmenter votre productivité. Devenez 3 fois plus productif grace à notre méthode !', 'formation-productivite-2')
GO


INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('Thomas', 'super formation', 5, 1, '2017-09-13', '1d7c6051-c4a2-4efc-aa61-e3d84fb2475e')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('Thomas', 'super formation', 4, 1, '2017-09-13', '1d7c6051-c4a2-4efc-aa61-e3d84fb2475e')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('Thomas', 'super ', 5, 2, '2017-09-13', '1d7c6051-c4a2-4efc-aa61-e3d84fb2475e')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('Thomas', 'super formation', 5, 3, '2017-09-13', '1d7c6051-c4a2-4efc-aa61-e3d84fb2475e')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('thomas2', 'efzefzefze', 1, 1, '2017-09-13 17:37:00.548156', '1d7c6051-c4a2-4efc-aa61-e3d84fb2475e')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('thomas2', 'zfzefze thomas 22', 1, 1, '2017-09-13 17:47:11.505261', '86374fb2-e0f4-4363-ad69-eea2d10e28ef')
GO

INSERT INTO dbo.Avis (Nom, Description, Note, IdFormation, DateAvis, UserId)
VALUES ('thomas 3', 'thomas 3', 4, 1, '2017-09-13 17:48:22.682393', 'd0339f0f-ac98-4219-a067-4e034773bb2d')
GO