
--creacion de tablas: tipos_animales, clases_animales, detalles_animales, lista_animales
CREATE TABLE tipos_animales (id bigserial, tipo varchar(25));
CREATE TABLE clases_animales (id bigserial, clase varchar(25));
CREATE TABLE detalles_animales (id bigserial, nombre varchar(25), tipo varchar(25));
CREATE TABLE lista_animales (id bigserial, nombre varchar(25), peso int, edad int);


--insertar al menos 4 elementos en cada tabla
INSERT INTO tipos_animales (tipo) VALUES ('mamifero'), ('ave'), ('reptil'), ('anfibio');
INSERT INTO clases_animales (clase) VALUES ('carnivoro'), ('carnivoro'), ('herbivoro'),('carnivoro');
INSERT INTO detalles_animales (nombre, tipo) VALUES ('leon', 'mamifero'), ('avestruz', 'ave');
INSERT INTO detalles_animales (nombre, tipo) VALUES ('cocodrilo', 'reptil'), ('sapo', 'anfibio');

INSERT INTO lista_animales (nombre, peso, edad) VALUES ('leon',100, 20),('leon',110, 25), ('leon',130, 30);
INSERT INTO lista_animales (nombre, peso, edad) VALUES ('cocodrilo',200, 30),('cocodrilo',80, 15), ('avestruz',40, 10);
INSERT INTO lista_animales (nombre, peso, edad) VALUES ('sapo',1, 2),('sapo',1, 3);

--consulta caracteristicas, tipo de animal y clase de animal en base a un animal particular
SELECT * FROM lista_animales;

--seleccionamos solo nombre y pesos de los animales
SELECT nombre,peso FROM lista_animales;

--mostramos solo los elementos distintos
SELECT DISTINCT nombre FROM lista_animales;

--seleccionamos de lista_animales todos los leones
SELECT * FROM lista_animales WHERE nombre = 'leon';

--seleccionamos los animales mayores a 28 años
SELECT * FROM lista_animales WHERE edad > 28;

--selecciona todos la union de dichas tablas
SELECT * 
FROM lista_animales LEFT JOIN clases_animales
ON lista_animales.id = clases_animales.id; 

--selecciona la interseccion de dichas tablas
SELECT * 
FROM lista_animales INNER JOIN detalles_animales
ON lista_animales.id = detalles_animales.id; 

--obtenga un dump zoologico.sql y enviar a github

