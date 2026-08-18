-- Ejercicio 057: consultas del modelo de aventura

USE campuslands_mysql;

SELECT p.nombre AS personaje, m.nombre AS mision, pm.progreso
FROM participaciones_aventura_057 AS pm
JOIN personajes_aventura_057 AS p ON p.id = pm.personaje_id
JOIN misiones_aventura_057 AS m ON m.id = pm.mision_id
ORDER BY p.nombre;

SELECT m.nombre AS mision, m.dificultad, m.recompensa_experiencia
FROM misiones_aventura_057 AS m
WHERE m.estado = 'activa'
ORDER BY m.recompensa_experiencia DESC;

SELECT m.nombre AS mision, COUNT(pm.personaje_id) AS total_participantes
FROM misiones_aventura_057 AS m
LEFT JOIN participaciones_aventura_057 AS pm ON pm.mision_id = m.id
GROUP BY m.id, m.nombre
ORDER BY total_participantes DESC;

SELECT m.dificultad, SUM(r.valor) AS valor_recompensas
FROM misiones_aventura_057 AS m
JOIN recompensas_aventura_057 AS r ON r.mision_id = m.id
GROUP BY m.dificultad
ORDER BY valor_recompensas DESC;

SELECT p.nombre AS personaje, m.nombre AS mision
FROM participaciones_aventura_057 AS pm
JOIN personajes_aventura_057 AS p ON p.id = pm.personaje_id
JOIN misiones_aventura_057 AS m ON m.id = pm.mision_id
WHERE pm.progreso = 100
ORDER BY p.nombre;
