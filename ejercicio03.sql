/* ## Ejercicio 3
1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS Productos (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (255) NOT NULL,
	precio FLOAT NOT NULL
)

/*2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO public.productos (nombre, precio)
VALUES ('Pendientes', 85.90);

INSERT INTO public.productos (nombre, precio)
VALUES ('Collar', 29.90);

INSERT INTO public.productos (nombre, precio)
VALUES ('Anillo', 120.50);

INSERT INTO public.productos (nombre, precio)
VALUES ('Pulsera', 49.90);

INSERT INTO public.productos (nombre, precio)
VALUES ('Reloj', 199.90);

/*3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE public.productos
SET precio = 35.55
WHERE id = 2

/*4. Elimina un producto de la tabla "Productos".*/
DELETE FROM public.productos
WHERE id = 3

/*5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").
# Primero añadimos una columna en la tabla usuarios para poderlo relacionar con la PRIMARY KEY de la tabla productos, e actualizamos la tabla para introducir valores en esa nueva columna para algunos de los usuarios*/
ALTER TABLE public.usuarios
ADD COLUMN producto_id INT

UPDATE public.usuarios
SET producto_id = 4
WHERE id = 3;

UPDATE public.usuarios
SET producto_id = 2
WHERE id = 5;

UPDATE public.usuarios
SET producto_id = 5
WHERE id = 1;

/* Hacemos la consulta que se pide en el ejercicio*/
SELECT 
public.usuarios.nombre AS nombre_usuario,
public.productos.nombre AS producto
FROM public.productos
INNER JOIN public.usuarios
ON public.productos.id = public.usuarios.producto_id