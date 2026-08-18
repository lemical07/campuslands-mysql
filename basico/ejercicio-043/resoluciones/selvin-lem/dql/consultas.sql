-- Ejercicio 043: consultas con filtros por estado

USE campuslands_mysql;

SELECT titulo, subgenero, calificacion
FROM peliculas_miedo_043
WHERE estado = 'disponible'
ORDER BY calificacion DESC;

SELECT titulo, duracion_minutos, estado
FROM peliculas_miedo_043
WHERE estado = 'produccion'
ORDER BY duracion_minutos DESC;

SELECT subgenero, COUNT(*) AS total_peliculas,
       AVG(calificacion) AS promedio_calificacion
FROM peliculas_miedo_043
WHERE estado <> 'archivada'
GROUP BY subgenero
ORDER BY promedio_calificacion DESC;

SELECT titulo, calificacion
FROM peliculas_miedo_043
WHERE calificacion >= 8 AND estado = 'disponible'
ORDER BY calificacion DESC;

SELECT estado, COUNT(*) AS total_peliculas
FROM peliculas_miedo_043
GROUP BY estado
ORDER BY total_peliculas DESC;
