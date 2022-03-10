--Eliminar BD
--DROP DATABASE main;

--Crear BD
--CREATE DATABASE main;

--Conectar a la BD
\c main;

--Cargar el respaldo de la base de datos unidad2.sql (Paso 1)

--psql -U rodrigo main < unidad2.sql

--El cliente usuario01 ha realizado la siguiente compra: (Paso 2)
--producto: producto9; cantidad: 5; fecha: fecha del sistema
BEGIN TRANSACTION;
INSERT INTO compra (id, cliente_id, fecha) VALUES (33, 1, '2020-07-28');
INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (43, 9, 33, 5);
UPDATE producto SET stock = stock - 5 WHERE id = 9;

--Consulta si el stock fue restado
SELECT * FROM producto WHERE id = 9;
--Rollback de finalización
ROLLBACK;

-- El cliente usuario02 ha realizado la siguiente compra: (Paso 3)
-- producto: producto1, producto 2, producto 8
-- cantidad: 3 de cada producto;  fecha: fecha del sistema

--Ingresar la compra
BEGIN TRANSACTION;
INSERT INTO compra (id, cliente_id, fecha) VALUES (34, 2, '2020-07-28');

--Detalle primer producto
INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (44, 1, 34, 3);
UPDATE producto SET stock = stock - 3 WHERE id = 1;

--Detalle segundo producto
INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (45, 2, 34, 3);
UPDATE producto SET stock = stock - 3 WHERE id = 2;
SAVEPOINT save1;

--Detalle tercer producto
INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (46, 8, 34, 3);
UPDATE producto SET stock = stock - 3 WHERE id = 3;

--El producto 8 tiene stock 0, volvemos al savepoint anterior
ROLLBACK TO save1;

--Consultar tabla producto para validar los stocks
SELECT * FROM producto;

--Realizar las siguientes consultas (Paso 4)
--Deshabilitar el AUTOCOMMIT (Paso a)
\set AUTOCOMMIT off

--Insertar un nuevo cliente (Paso b)
INSERT INTO cliente (id, nombre, email) VALUES (11, 'usuario011', 'usuario011@hotmail.com');

--Confirmar que fue agregado en la tabla cliente (Paso c)
SELECT * FROM cliente;

--Realizar un ROLLBACK (Paso d)
ROLLBACK;

--Confirmar que se restauró la información, sin considerar la inserción del punto b (Paso e)
SELECT * FROM cliente;

--Habilitar de nuevo el AUTOCOMMIT (Paso f)
\set AUTOCOMMIT on;