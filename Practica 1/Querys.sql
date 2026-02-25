Creacion de tablas( BibliotecaV1 )

CREATE TABLE AUTOR(
  ID INT PRIMARY KEY,
  Nombre varchar(20),
  Nacionalidad varchar(20)
)

CREATE TABLE LIBRO(
  ID INT PRIMARY KEY,
  Nombre varchar(20),
  Fecha_Lanzamiento date,
  Genero varchar(20)
)

CREATE TABLE EDITORIAL(
  ID INT PRIMARY KEY,
  Nombre varchar(20),
  Email varchar(20),
  Direccion varchar(20),
  Genero varchar(20)
)

CREATE TABLE BIBLIOTECA(
  ID int PRIMARY KEY,
  Nombre varchar(20),
  Email varchar(20),
  Telefono Int,
  Direccion varchar(20)
)

CREATE TABLE LIBRO_AUTOR (
  ID_LIBRO INT,
  ID_AUTOR INT,
  PRIMARY KEY (ID_LIBRO, ID_AUTOR),
  FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO(ID),
  FOREIGN KEY (ID_AUTOR) REFERENCES AUTOR(ID))