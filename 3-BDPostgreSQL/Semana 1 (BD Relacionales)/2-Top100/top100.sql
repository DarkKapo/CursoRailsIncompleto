--Elimina BD
DROP DATABASE peliculas;

--Crea la BD (Paso 1)
CREATE DATABASE peliculas;

--Conectar a la BD
\c peliculas;

--Crea tabla peliculas
CREATE TABLE peliculas (id INT UNIQUE, pelicula VARCHAR(100), año_estreno INT, director VARCHAR(50), PRIMARY KEY(id) );

--Crea tabla reparto
CREATE TABLE reparto (id INT, actores VARCHAR(50), FOREIGN KEY(id) REFERENCES peliculas(id) );

--Cargar los archivos a la BD (Paso 2)
\copy peliculas FROM 'peliculas.csv' csv header;
\copy reparto FROM 'reparto.csv' csv

--Mostrar ID de la película Titanic (Paso 3)
SELECT id FROM peliculas WHERE pelicula = 'Titanic';

--Listar a todos los actores que aparecen en la película "Titanic" (Paso 4)
SELECT actores FROM reparto WHERE id = 2;

--Consultar en cuántas películas del top 100 participa Harrison Ford (Paso 5)
SELECT COUNT(actores) FROM reparto WHERE actores = 'Harrison Ford';

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente (Paso 6)
SELECT * FROM peliculas WHERE año_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC;

--Muestra los títulos con su longitud (Paso 7)
SELECT pelicula, LENGTH(pelicula) as longitud_titulo FROM peliculas;

--Muestra longitud más grande entre todos los títulos de las películas (Paso 8)
SELECT MAX(LENGTH(pelicula)) FROM peliculas;