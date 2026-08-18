USE campuslands_mysql;

-- 1. Consultar equipos ordenados por victorias.
SELECT nombre AS equipo, region, victorias
FROM equipos_moba_031
ORDER BY victorias DESC;

-- 2. Mostrar jugadores y sus equipos.
SELECT j.nombre AS jugador, j.rol, e.nombre AS equipo
FROM jugadores_moba_031 AS j
JOIN equipos_moba_031 AS e ON e.id = j.equipo_id
ORDER BY e.nombre, j.nombre;

-- 3. Contar jugadores por equipo.
SELECT e.nombre AS equipo, COUNT(j.id) AS total_jugadores
FROM equipos_moba_031 AS e
LEFT JOIN jugadores_moba_031 AS j ON j.equipo_id = e.id
GROUP BY e.id, e.nombre
ORDER BY total_jugadores DESC;

-- 4. Consultar resultados de las partidas.
SELECT p.fecha_partida, l.nombre AS equipo_local,
       v.nombre AS equipo_visitante, p.puntos_local, p.puntos_visitante
FROM partidas_moba_031 AS p
JOIN equipos_moba_031 AS l ON l.id = p.equipo_local_id
JOIN equipos_moba_031 AS v ON v.id = p.equipo_visitante_id
ORDER BY p.fecha_partida;

-- 5. Resumir victorias y equipos por region.
SELECT region, SUM(victorias) AS victorias_totales,
       COUNT(*) AS total_equipos
FROM equipos_moba_031
GROUP BY region
ORDER BY victorias_totales DESC;
