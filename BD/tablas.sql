CREATE TABLE CataEmpr(
IdEmpresa int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255) not null,
Fecha datetime,
Proyecto varchar(255),
Estado varchar(1),
IdRamo int not null,
IdResponsable int 
)

CREATE TABLE CatRecu(
IdRecurso int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(255),
Estado varchar(1),
IdEmpresa int
)

CREATE TABLE CataEstr(
IdEstrategia int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(MAX),
Estado varchar(1),
IdRamo int
)

CREATE TABLE CataKPIs(
IdKPIsa int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(MAX),
Meta numeric(18,6),
Fecha datetime,
IdEmpresa int,
IdResponsable int,
IdUsuario int,
Estado varchar(1)
)

CREATE TABLE CataFact(
IdFactor int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(max),
IdRamo int, 
Estado varchar(1)
)

CREATE TABLE CataSubFact(
IdSFactor int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(max),
IdFactor int, 
Estado varchar(1)
)

CREATE TABLE CataRamo(
IdRamo int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Descripcion varchar(max),
Estado varchar(1)
)

CREATE TABLE CataCues(
IdPregunta int NOT NULL PRIMARY KEY IDENTITY(1,1),
Pregunta varchar(max),
Estado varchar(1)
)

CREATE TABLE CataResp(
IdResponsable int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
ApellPaterno varchar(255),
ApellMaterno varchar(255),
Correo nvarchar(255),
Fecha datetime,
)

CREATE TABLE CataUsua(
IdUsuario int NOT NULL PRIMARY KEY IDENTITY(1,1),
Nombre varchar(255),
Contrasena varchar(255),
IdPerfil int,
IdResponsable int
)

CREATE TABLE CataPerf(
IdPerfil int NOT NULL PRIMARY KEY IDENTITY(1,1),
Descripcion varchar(255),
Fecha datetime,
Estado varchar(1)
)