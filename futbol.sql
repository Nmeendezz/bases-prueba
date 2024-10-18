DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipo (
	Id_equipo INT PRIMARY KEY,
	Nombre VARCHAR (50),
	Ciudad VARCHAR (50)
);

CREATE TABLE jugador (
	DNI VARCHAR (50) PRIMARY KEY,
	Nombre VARCHAR (50),
	Nacionalidad VARCHAR (50),
	Dorsal INT,
	Altura FLOAT,
	Id_equipo INT,
	FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo)
);

INSERT INTO equipo VALUES
(1, 'FC Barcelona', 'Barcelona'),
(2, 'Real Madrid', 'Madrid');

INSERT INTO jugador VALUES 
('21543865J', 'Lamine Yamal', 'España', 19, 1.80, 1),
('98462532L', 'Frenkie De Jong', 'Paises Bajos', 21, 1.81, 1),
('35189446P', 'Jude Bellingham', 'Inglaterra', 5, 1.86, 2),
('54123978S', 'Vinicius Jr', 'Brasil', 7, 1.76, 2); 
