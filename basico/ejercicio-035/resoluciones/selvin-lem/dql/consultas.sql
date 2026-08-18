-- Ejercicio 035: consultas SELECT del taller

USE campuslands_mysql;

-- 1. Mostrar ordenes que siguen pendientes de entrega.
SELECT cliente, motocicleta, servicio, estado
FROM servicios_taller_035
WHERE estado IN ('recibida', 'en_proceso', 'terminada')
ORDER BY fecha_ingreso;

-- 2. Consultar servicios con costo superior a 250.
SELECT cliente, servicio, costo AS valor_servicio
FROM servicios_taller_035
WHERE costo > 250
ORDER BY costo DESC;

-- 3. Mostrar los servicios que requieren mas de cinco horas.
SELECT motocicleta, servicio, horas_estimadas
FROM servicios_taller_035
WHERE horas_estimadas > 5
ORDER BY horas_estimadas DESC;

-- 4. Resumir costo por estado.
SELECT estado, COUNT(*) AS total_ordenes,
       SUM(costo) AS costo_total
FROM servicios_taller_035
GROUP BY estado
ORDER BY costo_total DESC;

-- 5. Consultar ordenes recibidas durante la primera semana.
SELECT cliente, motocicleta, fecha_ingreso
FROM servicios_taller_035
WHERE fecha_ingreso BETWEEN '2026-08-01' AND '2026-08-07'
ORDER BY fecha_ingreso;
