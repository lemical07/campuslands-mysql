-- Ejercicio 032: consultas del ranking battle royale

USE campuslands_mysql;

-- 1. Ranking general por puntuacion.
SELECT jugador, escuadron, posicion, puntuacion
FROM ranking_battle_royale_032
ORDER BY puntuacion DESC;

-- 2. Mejores jugadores por eliminaciones.
SELECT jugador, escuadron, eliminaciones
FROM ranking_battle_royale_032
WHERE estado = 'clasificado'
ORDER BY eliminaciones DESC, puntuacion DESC;

-- 3. Promedio de puntuacion por escuadron.
SELECT escuadron, COUNT(*) AS jugadores,
       AVG(puntuacion) AS puntuacion_promedio
FROM ranking_battle_royale_032
GROUP BY escuadron
ORDER BY puntuacion_promedio DESC;

-- 4. Partidas con posiciones dentro del top 10.
SELECT jugador, fecha_partida, posicion, puntuacion
FROM ranking_battle_royale_032
WHERE posicion <= 10
ORDER BY fecha_partida, posicion;

-- 5. Resumen de eliminaciones por estado.
SELECT estado, COUNT(*) AS total_jugadores,
       SUM(eliminaciones) AS eliminaciones_totales
FROM ranking_battle_royale_032
GROUP BY estado
ORDER BY eliminaciones_totales DESC;

-- 6. Jugadores con puntuacion superior al promedio general.
SELECT jugador, escuadron, puntuacion
FROM ranking_battle_royale_032
WHERE puntuacion > (SELECT AVG(puntuacion) FROM ranking_battle_royale_032)
ORDER BY puntuacion DESC;
