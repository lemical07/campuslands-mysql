-- Ejercicio 041: consultas y validaciones de pingpong

USE campuslands_mysql;

-- 1. Clasificar jugadores segun su ranking.
SELECT nombre, ranking,
       CASE
           WHEN ranking <= 50 THEN 'elite'
           WHEN ranking <= 200 THEN 'competitivo'
           ELSE 'en desarrollo'
       END AS nivel
FROM jugadores_pingpong_041
ORDER BY ranking;

-- 2. Consultar jugadores activos con mas victorias que derrotas.
SELECT nombre, victorias, derrotas
FROM jugadores_pingpong_041
WHERE estado = 'activo' AND victorias > derrotas
ORDER BY victorias DESC;

-- 3. Resumir resultados por estado.
SELECT estado, COUNT(*) AS total_jugadores,
       SUM(victorias) AS victorias_totales
FROM jugadores_pingpong_041
GROUP BY estado
ORDER BY victorias_totales DESC;

-- 4. Calcular el porcentaje de victorias.
SELECT nombre, victorias, derrotas,
       ROUND(victorias * 100.0 / NULLIF(victorias + derrotas, 0), 2) AS porcentaje_victorias
FROM jugadores_pingpong_041
ORDER BY porcentaje_victorias DESC;

-- 5. Consultar jugadores juveniles activos.
SELECT nombre, edad, ranking
FROM jugadores_pingpong_041
WHERE edad < 18 AND estado = 'activo'
ORDER BY edad, ranking;
