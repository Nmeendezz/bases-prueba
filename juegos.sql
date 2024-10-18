DROP DATABASE IF EXISTS juegos;
CREATE DATABASE juegos;
USE juegos;

CREATE TABLE Desarrollador(
	Nombre VARCHAR (50) PRIMARY KEY
);

CREATE TABLE Juego(
	Id INT PRIMARY KEY,
	Nombre VARCHAR (50),
	Fk_Desarrollador VARCHAR (50),
	FOREIGN KEY (Fk_Desarrollador) REFERENCES Desarrollador(Nombre)
	on delete cascade
);

CREATE TABLE Personaje(
	Nombre VARCHAR(50) PRIMARY KEY,
	Vida FLOAT,
	Fk_Juego INT,
	FOREIGN KEY (Fk_Juego) REFERENCES Juego(Id)
);

INSERT INTO Desarrollador VALUES ('Buggy Soft');
INSERT INTO Juego VALUES
(1, 'Las aventuras del capitan salami', 'Buggy Soft'),
(2, 'Las aventuras del capitan salami - Vegan Edition', 'Buggy Soft');

INSERT INTO Personaje VALUES 
('Capitan Salami', 1.5, 1),
('Señor cuchillo', 1.5, 1),
('Capitan Seitan', 1.5, 2),
('Señor Cucharilla', 1.5, 2);

DELETE FROM Juego WHERE Id=1;

SELECT * FROM Desarrollador;
SELECT * FROM Juego;
SELECT * FROM Personaje;
