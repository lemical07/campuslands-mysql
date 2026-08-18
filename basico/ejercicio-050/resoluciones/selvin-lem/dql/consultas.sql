-- Ejercicio 050: consultas SELECT de tatuajes

USE campuslands_mysql;

SELECT cliente, artista, estilo, fecha_cita
FROM citas_tatuajes_050
WHERE estado = 'reservada'
ORDER BY fecha_cita;

SELECT artista, COUNT(*) AS total_citas,
       SUM(precio) AS valor_agendado
FROM citas_tatuajes_050
WHERE estado <> 'cancelada'
GROUP BY artista
ORDER BY valor_agendado DESC;

SELECT cliente, estilo, precio
FROM citas_tatuajes_050
WHERE precio > 300
ORDER BY precio DESC;

SELECT estilo, AVG(duracion_horas) AS duracion_promedio
FROM citas_tatuajes_050
GROUP BY estilo
ORDER BY duracion_promedio DESC;

SELECT cliente, fecha_cita, estado
FROM citas_tatuajes_050
WHERE fecha_cita BETWEEN '2026-08-01' AND '2026-08-10'
ORDER BY fecha_cita;
