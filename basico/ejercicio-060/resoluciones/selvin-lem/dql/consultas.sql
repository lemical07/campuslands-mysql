-- Ejercicio 060: consultas de relaciones streaming

USE campuslands_mysql;

SELECT c.nombre AS creador, c.canal, d.nombre AS dispositivo,
       d.tipo, cs.calidad
FROM configuraciones_streaming_060 AS cs
JOIN creadores_streaming_060 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_060 AS d ON d.id = cs.dispositivo_id
ORDER BY c.nombre, d.tipo;

SELECT c.nombre AS creador, SUM(d.precio) AS costo_equipo
FROM configuraciones_streaming_060 AS cs
JOIN creadores_streaming_060 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_060 AS d ON d.id = cs.dispositivo_id
GROUP BY c.id, c.nombre
ORDER BY costo_equipo DESC;

SELECT c.plataforma, COUNT(*) AS total_configuraciones
FROM configuraciones_streaming_060 AS cs
JOIN creadores_streaming_060 AS c ON c.id = cs.creador_id
GROUP BY c.plataforma
ORDER BY total_configuraciones DESC;

SELECT d.nombre, d.tipo, d.precio
FROM dispositivos_streaming_060 AS d
WHERE d.estado = 'disponible'
ORDER BY d.precio DESC;

SELECT c.nombre AS creador, d.nombre AS dispositivo, cs.calidad
FROM configuraciones_streaming_060 AS cs
JOIN creadores_streaming_060 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_060 AS d ON d.id = cs.dispositivo_id
WHERE cs.calidad = '4k'
ORDER BY c.nombre;
