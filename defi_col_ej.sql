DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

CREATE TABLE ej1(
	A INT,
	B DATE,
	C VARCHAR(5)
);

-- INSERTAR
-- 1. valores en a, b , c
-- 2. valores en orden b, c, a
-- 3. valores en c y b
-- 4. valores en b

INSERT INTO ej1 VALUES (1, '2024/08/03', 'nico');
INSERT INTO ej1 (B, C, A) VALUES ('2024/10/08', 'HOLA', 5);
INSERT INTO ej1 (C, B) VALUES ('barca', '2022/08/05');
INSERT INTO ej1 (B) VALUES ('2024/07/16');

-- EJERCICIO 2
CREATE TABLE ej2(
        a INT NOT NULL,
        b INT NOT NULL DEFAULT 0,
        c VARCHAR(5),
        d VARCHAR (5) DEFAULT 'Hola'
);

-- INSERTAR
-- 1. valores en a, b, d
-- 2. valores en a, b, c
-- 3. valores en c, a y default en b, d es null
-- 4. valor en a con default en b y d
-- 5. valor en a null en d

INSERT INTO ej2 (a, b, d) VALUES (4, 5, 'HOLA');
INSERT INTO ej2 (a, b, c) VALUES (3, 6, 'nico');
INSERT INTO ej2 (c, a, d) VALUES ('busca', 4, null);
INSERT INTO ej2 (a) VALUES (3);
INSERT INTO ej2 (a, d) VALUES (2, null);

-- EJERCICIO 3
CREATE TABLE ej3(
	a INT AUTO_INCREMENT PRIMARY KEY,
	b VARCHAR(5) UNIQUE KEY,
	c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3 (b, c)  VALUES
('papap', 'prueb'),
('batma', 'cosa');

INSERT INTO ej3 VALUES
(5, 'bla', 'pepe');

INSERT INTO ej3 (b, c) VALUES
('otra', 'mas');
SELECT * FROM ej3;
