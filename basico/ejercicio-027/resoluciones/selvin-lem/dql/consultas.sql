-- Ejercicio 027: consultas del modelo de accion y aventura

USE campuslands_mysql;

-- 1. Mostrar personajes y las misiones en las que participan.
SELECT p.nombre AS personaje, m.nombre AS mision, pm.progreso
FROM participaciones_aventura_027 AS pm
JOIN personajes_aventura_027 AS p ON p.id = pm.personaje_id
JOIN misiones_aventura_027 AS m ON m.id = pm.mision_id
ORDER BY p.nombre;

-- 2. Consultar misiones activas con su experiencia de recompensa.
SELECT nombre AS mision, dificultad, experiencia_recompensa
FROM misiones_aventura_027
WHERE estado = 'activa'
ORDER BY experiencia_recompensa DESC;

-- 3. Contar participantes por mision.
SELECT m.nombre AS mision, COUNT(pm.personaje_id) AS total_participantes
FROM misiones_aventura_027 AS m
LEFT JOIN participaciones_aventura_027 AS pm ON pm.mision_id = m.id
GROUP BY m.id, m.nombre
ORDER BY total_participantes DESC, m.nombre;

-- 4. Sumar el valor de recompensas por dificultad.
SELECT m.dificultad, SUM(r.valor) AS valor_total_recompensas
FROM misiones_aventura_027 AS m
JOIN recompensas_aventura_027 AS r ON r.mision_id = m.id
GROUP BY m.dificultad
ORDER BY valor_total_recompensas DESC;

-- 5. Mostrar personajes con misiones completadas al 100 por ciento.
SELECT p.nombre AS personaje, m.nombre AS mision
FROM participaciones_aventura_027 AS pm
JOIN personajes_aventura_027 AS p ON p.id = pm.personaje_id
JOIN misiones_aventura_027 AS m ON m.id = pm.mision_id
WHERE pm.progreso = 100
ORDER BY p.nombre;

-- 6. Calcular el nivel promedio de personajes por clase.
SELECT clase, COUNT(*) AS total_personajes,
       AVG(nivel) AS nivel_promedio
FROM personajes_aventura_027
GROUP BY clase
ORDER BY nivel_promedio DESC;
