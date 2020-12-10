--CREACIÓN TABLA TIPO ANIMAL
CREATE TABLE tipo_animal(
	id_tipo SERIAL,
	nombre_tipo_animal VARCHAR(20),
	PRIMARY KEY(id_tipo)
);

--INSERT
INSERT INTO public.tipo_animal(
	nombre_tipo_animal)
	VALUES ('carnivoro');

INSERT INTO public.tipo_animal(
	nombre_tipo_animal)
	VALUES ('herbivoro');



--CREACIÓN TABLA CATEGORIA ANIMALES
CREATE TABLE categoria_animal(
	id_categoria SERIAL,
	categoria_animal VARCHAR(20),
	PRIMARY KEY(id_categoria)
);

--INSERT
INSERT INTO public.categoria_animal(
	categoria_animal)
	VALUES ('depredador');

INSERT INTO public.categoria_animal(
	categoria_animal)
	VALUES ('Presa');



--CREACION TABLA DETALLE ANIMAL
CREATE TABLE detalle_animal (
	id_detalle SERIAL,
	detalle_x_animal VARCHAR(45),
	PRIMARY KEY(id_detalle)
);

--INSERT
INSERT INTO public.detalle_animal(
	detalle_x_animal)
	VALUES ('Buen estado de salud');

INSERT INTO public.detalle_animal(
	detalle_x_animal)
	VALUES ('Mal estado de salud');


--CREACION TABLA ANIMAL
CREATE TABLE animal(
	id_animal SERIAL,
        nombre_animal VARCHAR(20),
        fk_id_tipo SERIAL,
        fk_id_categoria SERIAL,
        fk_id_detalle SERIAL,
	PRIMARY KEY(id_animal),
	FOREIGN KEY(fk_id_tipo) REFERENCES tipo_animal(id_tipo),
        FOREIGN KEY(fk_id_categoria) REFERENCES categoria_animal(id_categoria),
        FOREIGN KEY(fk_id_detalle) REFERENCES detalle_animal(id_detalle)	
);



--INSERT
INSERT INTO public.animal(
	id_animal, nombre_animal, fk_id_tipo, fk_id_categoria, fk_id_detalle)
	VALUES (1, 'Tigre', 1, 1, 1);

INSERT INTO public.animal(
	id_animal, nombre_animal, fk_id_tipo, fk_id_categoria, fk_id_detalle)
	VALUES (2, 'Venado', 2, 2, 2);


--CONsulta estado de salud del venado
SELECT nombre_animal FROM animal
JOIN detalle_animal
ON animal.fk_id_detalle = detalle_animal.id_detalle
WHERE detalle_x_animal = 'Mal estado de salud';