--Elimina la BD
DROP DATABASE blog;

--Crea la BD
CREATE DATABASE blog;

--Conecta a la BD (Paso 1)
\c blog;

--Crea las tablas (Paso 2)

CREATE TABLE usuario (id INT UNIQUE, email VARCHAR(100), PRIMARY KEY (id));
CREATE TABLE post (id INT UNIQUE, usuario_id INT, titulo VARCHAR(30), fecha DATE, PRIMARY KEY (id), FOREIGN KEY (usuario_id) REFERENCES usuario (id));
CREATE TABLE comentario (id INT, usuario_id INT, post_id INT, texto VARCHAR(50), fecha DATE, PRIMARY KEY (id), FOREIGN KEY (post_id) REFERENCES post(id), FOREIGN KEY (usuario_id) REFERENCES usuario(id));

--Insertar los registros (Paso 3)

--Para tabla usuario
INSERT INTO usuario VALUES (1, 'usuario01@hotmail.com');
INSERT INTO usuario VALUES (2, 'usuario02@gmail.com');
INSERT INTO usuario VALUES (3, 'usuario03@gmail.com');
INSERT INTO usuario VALUES (4, 'usuario04@hotmail.com');
INSERT INTO usuario VALUES (5, 'usuario05@yahoo.com');
INSERT INTO usuario VALUES (6, 'usuario06@hotmail.com');
INSERT INTO usuario VALUES (7, 'usuario07@yahoo.com');
INSERT INTO usuario VALUES (8, 'usuario08@yahoo.com');
INSERT INTO usuario VALUES (9, 'usuario09@yahoo.com');

--Para tabla post
INSERT INTO post VALUES (1, 1, 'Post 1: Esto es malo', '2020-06-29');
INSERT INTO post VALUES (2, 5, 'Post 2: Esto es malo', '2020-06-20');
INSERT INTO post VALUES (3, 1, 'Post 3: Esto es excelente', '2020-05-30');
INSERT INTO post VALUES (4, 9, 'Post 4: Esto es bueno', '2020-05-09');
INSERT INTO post VALUES (5, 7, 'Post 5: Esto es bueno', '2020-07-10');
INSERT INTO post VALUES (6, 5, 'Post 6: Esto es excelente', '2020-07-18');
INSERT INTO post VALUES (7, 8, 'Post 7: Esto es excelente', '2020-07-07');
INSERT INTO post VALUES (8, 5, 'Post 8: Esto es excelente', '2020-05-14');
INSERT INTO post VALUES (9, 2, 'Post 9: Esto es bueno', '2020-05-08');
INSERT INTO post VALUES (10, 6, 'Post 10: Esto es bueno', '2020-06-02');
INSERT INTO post VALUES (11, 4, 'Post 11: Esto es bueno', '2020-05-05');
INSERT INTO post VALUES (12, 9, 'Post 12: Esto es malo', '2020-07-23');
INSERT INTO post VALUES (13, 5, 'Post 13: Esto es excelente', '2020-05-30');
INSERT INTO post VALUES (14, 8, 'Post 14: Esto es excelente', '2020-05-01');
INSERT INTO post VALUES (15, 7, 'Post 15: Esto es malo', '2020-06-17');

--Para tabla comentario
INSERT INTO comentario VALUES (1, 3, 6, 'Este es el comentario 1', '2020-07-08');
INSERT INTO comentario VALUES (2, 4, 2, 'Este es el comentario 2', '2020-06-07');
INSERT INTO comentario VALUES (3, 6, 4, 'Este es el comentario 3', '2020-06-16');
INSERT INTO comentario VALUES (4, 2, 13, 'Este es el comentario 4', '2020-06-15');
INSERT INTO comentario VALUES (5, 6, 6, 'Este es el comentario 5', '2020-05-14');
INSERT INTO comentario VALUES (6, 3, 3, 'Este es el comentario 6', '2020-07-08');
INSERT INTO comentario VALUES (7, 6, 1, 'Este es el comentario 7', '2020-05-22');
INSERT INTO comentario VALUES (8, 6, 7, 'Este es el comentario 8', '2020-07-09');
INSERT INTO comentario VALUES (9, 8, 13, 'Este es el comentario 9', '2020-06-30');
INSERT INTO comentario VALUES (10, 8, 6, 'Este es el comentario 10', '2020-06-19');
INSERT INTO comentario VALUES (11, 5, 1, 'Este es el comentario 11', '2020-05-09');
INSERT INTO comentario VALUES (12, 8, 15, 'Este es el comentario 12', '2020-06-17');
INSERT INTO comentario VALUES (13, 1, 9, 'Este es el comentario 13', '2020-05-01');
INSERT INTO comentario VALUES (14, 2, 5, 'Este es el comentario 14', '2020-05-31');
INSERT INTO comentario VALUES (15, 4, 3, 'Este es el comentario 15', '2020-06-28');

--Selecciona el correo, id y título de todos los post publicados por el usuario 5 (Paso 4)
SELECT usuario.id, usuario.email, post.titulo FROM usuario INNER JOIN post on usuario.id = post.usuario_id WHERE usuario.id = 5;

--Lista el correo, id y el detalle de todos los comentarios que no hayan sido realizados por el usuario con email usuario06@hotmail.com (Paso 5)
SELECT usuario.id, usuario.email, comentario.texto FROM usuario FULL OUTER JOIN comentario ON usuario.id = comentario.usuario_id WHERE usuario.email <> 'usuario06@hotmail.com';

--Lista los usuarios que no han publicado ningún post (Paso 6)
SELECT usuario.email FROM usuario LEFT JOIN post ON usuario.id = post.usuario_id WHERE titulo is NULL;

--Listar todos los post con sus comentarios, incluyendo aquellos que no poseen comentarios (Paso 7)
SELECT post.titulo, comentario.texto FROM post FULL OUTER JOIN comentario ON post.usuario_id = comentario.usuario_id;

--Lista todos los usuarios que hayan publicado un post en Junio
SELECT usuario.email FROM usuario INNER JOIN post ON usuario.id = post.usuario_id WHERE fecha BETWEEN '2020-06-01' AND '2020-06-30';

--Muestra las tablas
--SELECT * FROM usuario;
--SELECT * FROM post;
--SELECT * FROM comentario;