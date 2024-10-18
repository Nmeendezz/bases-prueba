DROP DATABASE IF EXISTS TipoDatos;
CREATE DATABASE TipoDatos;
USE TipoDatos;

CREATE TABLE TiposDatos (
	flotante FLOAT(5,2),
	decimales DECIMAL(7,3),
	codigo CHAR(4),
	texto TEXT,
	dia DATE,
	momento DATETIME,
	hora TIME,
	color ENUM('Rojo', 'Verde', 'Azul')
);

INSERT INTO TiposDatos VALUES 
(23.1, 77.12, 'Nico',
'Texto largoooooo',
'2024-10-04', '2024-10-04 11:59:00',
'11:59:00', 'Verde');

