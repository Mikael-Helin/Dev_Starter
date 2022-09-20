USE master
GO
IF NOT EXISTS (
 SELECT name
 FROM sys.databases
 WHERE name = N'Bookmarks'
)
 CREATE DATABASE [Bookmarks];
GO
IF SERVERPROPERTY('ProductVersion') > '12'
 ALTER DATABASE [Bookmarks] SET QUERY_STORE=ON;
GO

USE Bookmarks;

CREATE TABLE Bookmarks (
    id int NOT NULL IDENTITY(1,1),
    name varchar(255) NOT NULL,
    link varchar(1023) NOT NULL,
    PRIMARY KEY (id)
);
GO

INSERT INTO Bookmarks (name, link) VALUES ("Dating", "https://www.youtube.com/watch?v=Oz0FKKO8bSg");
INSERT INTO Bookmarks (name, link) VALUES ("Chaplin", "https://www.youtube.com/watch?v=AkLnj5pJtDI");
INSERT INTO Bookmarks (name, link) VALUES ("Ievan Polkka", "https://www.youtube.com/watch?v=7yh9i0PAjck");
GO

