-- Ejercicio 037: consultas ordenadas de la liga

USE campuslands_mysql;

-- 1. Clasificacion por puntos y diferencia de goles.
SELECT equipo, partidos, puntos,
       goles_favor - goles_contra AS diferencia_goles
FROM clasificacion_futbol_037
WHERE estado = 'activo'
ORDER BY puntos DESC, diferencia_goles DESC, goles_favor DESC;

-- 2. Equipos ordenados por goles anotados.
SELECT equipo, goles_favor, goles_contra
FROM clasificacion_futbol_037
ORDER BY goles_favor DESC, goles_contra ASC;

-- 3. Los tres primeros equipos.
SELECT equipo, puntos, goles_favor - goles_contra AS diferencia_goles
FROM clasificacion_futbol_037
WHERE estado = 'activo'
ORDER BY puntos DESC
LIMIT 3;

-- 4. Promedios de goles de la liga.
SELECT AVG(goles_favor) AS promedio_goles_favor,
       AVG(goles_contra) AS promedio_goles_contra
FROM clasificacion_futbol_037
WHERE estado = 'activo';

-- 5. Equipos con diferencia de goles positiva.
SELECT equipo, goles_favor - goles_contra AS diferencia_goles
FROM clasificacion_futbol_037
WHERE goles_favor > goles_contra
ORDER BY diferencia_goles DESC;
