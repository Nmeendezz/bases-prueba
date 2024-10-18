DROP DATABASE IF EXISTS libros;
CREATE DATABASE libros;
USE libros;

CREATE TABLE autor(
	Id INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR (15),
	DNI VARCHAR (10) UNIQUE KEY
);

INSERT INTO autor VALUES (1, 'Pedro', '21548965Z');

CREATE TABLE tienda(
	CIF VARCHAR (10) PRIMARY KEY,
	Ubicacion VARCHAR (10),
	Web VARCHAR (15)
);

INSERT INTO tienda VALUES ('V5846282', 'Madrid', 'www.tienda.com');

CREATE TABLE libro(
	ISBN VARCHAR(16) PRIMARY KEY,
	Id_autor INT,
	CIF_tienda VARCHAR (10),
	Titulo VARCHAR (20),
	Genero VARCHAR (20) DEFAULT 'Fantasia',
	Precio INT CHECK (Precio < 50),
	Fecha_de_Publicacion DATE CHECK (Fecha_de_Publicacion > '2014-01-01'),
	FOREIGN KEY (Id_autor) REFERENCES autor(Id),
	FOREIGN KEY (CIF_tienda) REFERENCES tienda(CIF)
);

INSERT INTO libro VALUES ('3154867934512', 1, 'V5846282', 'Harry Potter', 'Ciencia ficcion', 35, '2018/08/10');
