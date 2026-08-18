-- Ejercicio 044: consultas de fechas

USE campuslands_mysql;

SELECT titulo, tipo, fecha_inicio, fecha_final
FROM producciones_ciencia_044
WHERE estado = 'activa'
ORDER BY fecha_inicio;

SELECT titulo, DATEDIFF(fecha_final, fecha_inicio) AS dias_de_produccion
FROM producciones_ciencia_044
ORDER BY dias_de_produccion DESC;

SELECT titulo, presupuesto, fecha_inicio
FROM producciones_ciencia_044
WHERE fecha_inicio >= '2026-06-01'
ORDER BY fecha_inicio;

SELECT tipo, COUNT(*) AS total_producciones,
       SUM(presupuesto) AS presupuesto_total
FROM producciones_ciencia_044
GROUP BY tipo
ORDER BY presupuesto_total DESC;

SELECT titulo, fecha_final
FROM producciones_ciencia_044
WHERE fecha_final BETWEEN '2026-08-01' AND '2026-12-31'
ORDER BY fecha_final;
