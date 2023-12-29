/* ## Ejercicio 4
1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").*/
CREATE TABLE IF NOT EXISTS Pedidos (
	id SERIAL PRIMARY KEY,
	id_usuario INT NOT NULL,
	id_producto INT,
	CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios (id),
	CONSTRAINT fk_id_producto FOREIGN KEY (id_producto) REFERENCES public.productos (id)
)

/*2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.*/
INSERT INTO public.pedidos (id_usuario, id_producto)
VALUES (1,5);

INSERT INTO public.pedidos (id_usuario, id_producto)
VALUES (3,5);

INSERT INTO public.pedidos (id_usuario, id_producto)
VALUES (4,2);

INSERT INTO public.pedidos (id_usuario)
VALUES (5);

/*3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT
public.usuarios.nombre AS usuario,
public.productos.nombre AS producto
FROM public.usuarios
LEFT JOIN public.pedidos
ON public.pedidos.id_usuario = public.usuarios.id
LEFT JOIN public.productos
ON public.productos.id = public.pedidos.id_producto
WHERE COALESCE (public.pedidos.cantidad,0) = 0

/*4. Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/
SELECT
public.usuarios.nombre AS usuario,
public.pedidos.id AS id_pedido
FROM public.usuarios
LEFT JOIN public.pedidos
ON public.pedidos.id_usuario = public.usuarios.id

/*5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE public.pedidos
ADD COLUMN cantidad INT

UPDATE public.pedidos
SET cantidad = 5
WHERE id = 1;

UPDATE public.pedidos
SET cantidad = 3
WHERE id = 2

UPDATE public.pedidos
SET cantidad = 1
WHERE id = 3

UPDATE public.pedidos
SET cantidad = 4
WHERE id = 5