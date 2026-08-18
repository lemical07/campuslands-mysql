-- Ejercicio 038: actualizaciones y consultas

USE campuslands_mysql;

-- Actualizar el resultado ganado por Rayo Futsal.
UPDATE equipos_futsala_038
SET partidos = partidos + 1,
	puntos = puntos + 3,
	goles_favor = goles_favor + 4
WHERE equipo = 'Rayo Futsal';

-- Registrar el partido perdido por Azul Sala.
UPDATE equipos_futsala_038
SET partidos = partidos + 1,
	goles_contra = goles_contra + 4
WHERE equipo = 'Azul Sala';

-- Marcar como eliminados los equipos con pocos puntos.
UPDATE equipos_futsala_038
SET estado = 'eliminado'
WHERE puntos <= 2;

-- Consultar la clasificacion de equipos activos.
SELECT equipo, partidos, puntos,
	   goles_favor - goles_contra AS diferencia
FROM equipos_futsala_038
WHERE estado = 'activo'
ORDER BY puntos DESC, diferencia DESC;

-- Resumir equipos y puntos por estado.
SELECT estado, COUNT(*) AS total_equipos,
	   SUM(puntos) AS puntos_totales
FROM equipos_futsala_038
GROUP BY estado
ORDER BY puntos_totales DESC;

-- Consultar equipos con diferencia de goles positiva.
SELECT equipo, goles_favor, goles_contra
FROM equipos_futsala_038
WHERE goles_favor > goles_contra
ORDER BY goles_favor DESC;
