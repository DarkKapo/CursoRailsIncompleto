--Elimina BD
DROP DATABASE Posts;

--Inicio Parte 1

--Crea una base de datos (Paso 1)
CREATE DATABASE Posts;

--Conectar a la BD
\c posts;

--Crea la tabla post con sus atributos (paso 2)
CREATE TABLE post(id INT UNIQUE, nombre VARCHAR(30), fecha_creacion DATE, contenido VARCHAR(100), descripcion VARCHAR(50), PRIMARY KEY(id) );

--Agrega los post (Paso 3)
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion) VALUES (1, 'Pamela', '2021-01-28', 'Confirmar la video llamada para el jueves', 'Confirmar llamada');
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion) VALUES (2, 'Pamela', '2021-02-15', 'Tengo el error 533 cuando inicio sesión en la plataforma', 'Error plataforma');
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion) VALUES (3, 'Carlos', '2021-03-22', 'Quiero cancelar la hora médica de la próxima semana', 'Cancelar hora');

--Agrega la columna título (Paso 4)
ALTER TABLE Post ADD Título VARCHAR(20);

--Agrega título a cada post (Paso 5)
UPDATE Post SET Título = 'Post Pamela (1)' WHERE id = 1;
UPDATE Post SET Título = 'Post Pamela (2)' WHERE id = 2;
UPDATE Post SET Título = 'Post Carlos (1)' WHERE id = 3;

--Agrega 2 post para Pedro (Paso 6)
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion, título) VALUES (4, 'Pedro', '2021-04-1', 'Cuándo estará listo el celular para ir por el?', 'Retiro celular', 'Post Pedro (1)');
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion, título) VALUES (5, 'Pedro', '2021-04-2', 'El servicio fue excelente, mi celular funciona bien', 'Agradecimiento', 'Post Pedro (2)');

--Elimina el post de Carlos (Paso 7)
DELETE FROM Post WHERE id = 3;

--Agrega un comentario de Carlos (Paso 8)
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion, título) VALUES (6, 'Carlos', '2021-05-04', 'Quiero agendar una nueva hora médica', 'Agendar hora', 'Post Carlos (2)');

--Fin Parte 1

--Inicio Parte 2

--Crea tabla comentarios (Paso 1)
CREATE TABLE comentarios(id INT, fecha DATE, hora TIME, contenido VARCHAR(100), FOREIGN KEY (id) REFERENCES Post(id) );

--Crea 2 comentarios para el post de "Pamela" y 4 para "Carlos" (Paso 2)
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (1, '2021-01-28', '18:34:03', 'Gracias por confirmar la llamada');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (2, '2021-02-15', '22:15:42', 'Gracias, pude solucionar el error');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '2021-05-04', '18:34:07', 'Tengo disponibilidad la próxima semana');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '2021-05-04', '18:40:30', 'Olvidé los horarios, entre las 16 hrs hasta las 20 hrs');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '2021-05-05', '09:33:51', 'Disculpe, tengo un problema y deseo cancelar la hora');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (6, '2021-05-05', '12:05:22', 'Gracias por cancelar mi hora médica');

--Crea un post para Margarita (Paso 3)
INSERT INTO post(id, nombre, fecha_creacion, contenido, descripcion, título) VALUES (7, 'Margarita', '2021-06-14', 'En el pedido olvidé agregar que es con despacho adomicilio', 'Rectificar compra', 'Post Margarita (1)');

--Agrega 5 comentarios para margarita (Paso 4)
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (7, '2021-06-14', '16:40:40', 'Le envié la dirección por interno');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (7, '2021-06-14', '16:45:15', 'Me puede confirmar si recibió el mensaje?');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (7, '2021-06-14', '16:58:15', 'Ok, gracias');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (7, '2021-06-14', '17:05:59', 'El pedido aún no llega');
INSERT INTO comentarios(id, fecha, hora, contenido) VALUES (7, '2021-06-14', '17:07:48', 'Gracias, el pedido acaba de llegar');
--Fin Parte 2

--Muestra las tablas
SELECT * FROM Post;
SELECT * FROM comentarios;