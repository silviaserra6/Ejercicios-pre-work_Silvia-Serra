/* ## Ejercicio 2
- Nivel de dificultad: Fácil - 
1. Crea una base de datos llamada "MiBaseDeDatos". */
CREATE DATABASE MiBaseDeDatos

/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS Usuarios (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	edad INT
)

/*3. Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO public.usuarios (nombre, edad)
VALUES ('Sergio', 31);

INSERT INTO public.usuarios (nombre, edad)
VALUES ('Silvia', 27);

/*4. Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE public.usuarios
SET edad = 28
WHERE id = 2

/*5. Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM public.usuarios
WHERE id = 2

/*- Nivel de dificultad: Moderado - 
1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS Ciudades (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL,
	pais VARCHAR (255) NOT NULL
)

/*2. Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades (nombre, pais)
VALUES ('Barcelona', 'España');

INSERT INTO public.ciudades (nombre, pais)
VALUES ('Berlin', 'Alemania');

INSERT INTO public.ciudades (nombre, pais)
VALUES ('Roma', 'Italia');

/*3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/
ALTER TABLE public.usuarios
ADD COLUMN ciudad_id INT

ALTER TABLE public.usuarios
ADD CONSTRAINT fk_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.ciudades (id)

/*Actualizamos algunos registros de usuarios para que tengan informada el ciudad_id*/
UPDATE public.usuarios
SET ciudad_id = 1
WHERE id = 1;

UPDATE public.usuarios
SET ciudad_id = 3
WHERE id = 3;

UPDATE public.usuarios
SET ciudad_id = 4
WHERE id = 4

UPDATE public.usuarios
SET ciudad_id = 2
WHERE id = 5

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT 
public.usuarios.nombre AS nombre_usuario,
public.ciudades.nombre AS nombre_ciudad,
public.ciudades.pais AS pais
FROM public.usuarios
LEFT JOIN public.ciudades
ON public.usuarios.ciudad_id = public.ciudades.id

/*5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/
SELECT 
public.usuarios.nombre AS nombre_usuario,
public.ciudades.nombre AS nombre_ciudad,
public.ciudades.pais AS pais
FROM public.usuarios
INNER JOIN public.ciudades
ON public.usuarios.ciudad_id = public.ciudades.id