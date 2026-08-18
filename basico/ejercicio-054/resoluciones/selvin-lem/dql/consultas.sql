-- Ejercicio 054: DELETE controlado y consultas

USE campuslands_mysql;

DELETE FROM trabajos_soldadura_054
WHERE estado = 'cancelado';

SELECT cliente, tipo_soldadura, piezas, costo
FROM trabajos_soldadura_054
WHERE estado <> 'cancelado'
ORDER BY fecha_registro;

SELECT tipo_soldadura, COUNT(*) AS total_trabajos,
       SUM(piezas) AS piezas_totales
FROM trabajos_soldadura_054
GROUP BY tipo_soldadura
ORDER BY piezas_totales DESC;

SELECT cliente, costo, estado
FROM trabajos_soldadura_054
WHERE costo > 700
ORDER BY costo DESC;

SELECT estado, COUNT(*) AS total_trabajos,
       SUM(costo) AS costo_total
FROM trabajos_soldadura_054
GROUP BY estado
ORDER BY costo_total DESC;
