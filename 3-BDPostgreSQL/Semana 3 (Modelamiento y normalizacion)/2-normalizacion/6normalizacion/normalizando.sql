--Normalizando desafío opcional 2

VideoClub(#código_película, título, {director}, año, cliente, fecha_devolución)

--Creando director (1FN)
directorPelícula(#código_película, #id_director, director)

--Eliminar dato repetitivo en la tabla VideoClub
VideoClub(#código_película, título, año, cliente, fecha_devolución)

--Crear tabla simplificando director (2FN)
directorPelícula(#código_película, #id_director)

--Crear tabla director
director(#id_director, director)

--Separamos Video club ya que cliente y fecha de devolución no tienen una relaciónn directa con la película (3FN)
VideoClub(#código_película, título, año, id_cliente)

--Crear tabla cliente
cliente(#id_cliente, cliente, fecha_devolución)