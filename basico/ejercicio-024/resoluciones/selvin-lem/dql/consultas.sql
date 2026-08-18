-- Ejercicio 024: DELETE controlado y consultas de verificacion

USE campuslands_mysql;

-- 1. Eliminar solo los trabajos archivados.
DELETE FROM trabajos_soldadura_024
WHERE estado = 'archivado';

-- 2. Confirmar que solo quedan trabajos no archivados.
SELECT nombre, tipo_soldadura, estado
FROM trabajos_soldadura_024
WHERE estado <> 'archivado'
ORDER BY fecha_registro;

-- 3. Consultar trabajos activos con costo superior a 700.
SELECT nombre, tipo_soldadura, costo
FROM trabajos_soldadura_024
WHERE estado = 'activo' AND costo > 700
ORDER BY costo DESC;

-- 4. Resumir trabajos por tipo de soldadura.
SELECT tipo_soldadura, COUNT(*) AS total_trabajos,
       SUM(piezas) AS total_piezas
FROM trabajos_soldadura_024
GROUP BY tipo_soldadura
ORDER BY total_trabajos DESC, tipo_soldadura ASC;

-- 5. Consultar los trabajos finalizados.
SELECT nombre, costo, fecha_registro
FROM trabajos_soldadura_024
WHERE estado = 'finalizado'
ORDER BY fecha_registro DESC;

-- 6. Mostrar el costo promedio por estado.
SELECT estado, AVG(costo) AS costo_promedio
FROM trabajos_soldadura_024
GROUP BY estado
ORDER BY costo_promedio DESC;
