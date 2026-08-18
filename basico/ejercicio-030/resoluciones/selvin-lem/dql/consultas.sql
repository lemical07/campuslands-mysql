-- Ejercicio 030: consultas de relaciones simples

USE campuslands_mysql;

-- 1. Mostrar cada creador y sus dispositivos configurados.
SELECT c.nombre AS creador, c.canal, d.nombre AS dispositivo,
       d.tipo, cs.calidad
FROM configuraciones_streaming_030 AS cs
JOIN creadores_streaming_030 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_030 AS d ON d.id = cs.dispositivo_id
ORDER BY c.nombre, d.tipo;

-- 2. Consultar equipos de creadores activos.
SELECT c.nombre AS creador, d.nombre AS dispositivo,
       cs.fecha_configuracion
FROM configuraciones_streaming_030 AS cs
JOIN creadores_streaming_030 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_030 AS d ON d.id = cs.dispositivo_id
WHERE c.estado = 'activo'
ORDER BY cs.fecha_configuracion;

-- 3. Contar dispositivos configurados por creador.
SELECT c.nombre AS creador, COUNT(cs.dispositivo_id) AS total_dispositivos
FROM creadores_streaming_030 AS c
LEFT JOIN configuraciones_streaming_030 AS cs ON cs.creador_id = c.id
GROUP BY c.id, c.nombre
ORDER BY total_dispositivos DESC, creador;

-- 4. Calcular el costo del equipo de cada creador.
SELECT c.nombre AS creador, SUM(d.precio) AS costo_total_equipo
FROM configuraciones_streaming_030 AS cs
JOIN creadores_streaming_030 AS c ON c.id = cs.creador_id
JOIN dispositivos_streaming_030 AS d ON d.id = cs.dispositivo_id
GROUP BY c.id, c.nombre
ORDER BY costo_total_equipo DESC;

-- 5. Consultar dispositivos disponibles que se usan en calidad 4K.
SELECT DISTINCT d.nombre AS dispositivo, d.tipo, d.precio
FROM configuraciones_streaming_030 AS cs
JOIN dispositivos_streaming_030 AS d ON d.id = cs.dispositivo_id
WHERE cs.calidad = '4k' AND d.estado = 'disponible'
ORDER BY d.precio DESC;

-- 6. Resumir configuraciones por plataforma.
SELECT c.plataforma, COUNT(*) AS total_configuraciones
FROM configuraciones_streaming_030 AS cs
JOIN creadores_streaming_030 AS c ON c.id = cs.creador_id
GROUP BY c.plataforma
ORDER BY total_configuraciones DESC;
