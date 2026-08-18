-- Ejercicio 052: consultas con ORDER BY

USE campuslands_mysql;

SELECT nombre, categoria, puntaje
FROM escenas_animacion_052
ORDER BY puntaje DESC;

SELECT nombre, duracion_segundos, estado
FROM escenas_animacion_052
ORDER BY duracion_segundos ASC;

SELECT nombre, categoria, puntaje
FROM escenas_animacion_052
ORDER BY categoria ASC, puntaje DESC;

SELECT nombre, fecha_creacion, estado
FROM escenas_animacion_052
WHERE estado <> 'archivada'
ORDER BY fecha_creacion DESC;

SELECT categoria, COUNT(*) AS total_escenas,
       AVG(puntaje) AS puntaje_promedio
FROM escenas_animacion_052
GROUP BY categoria
ORDER BY puntaje_promedio DESC;
