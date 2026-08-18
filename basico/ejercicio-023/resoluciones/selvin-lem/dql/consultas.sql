-- Ejercicio 023: UPDATE y consultas de verificacion

USE campuslands_mysql;

-- 1. Aumentar el presupuesto de los proyectos residenciales en revision.
UPDATE proyectos_arquitectura_023
SET presupuesto = presupuesto * 1.08
WHERE tipo = 'residencial' AND estado = 'revision';

-- 2. Marcar como aprobado el proyecto cultural listo para entrega.
UPDATE proyectos_arquitectura_023
SET estado = 'aprobado'
WHERE nombre = 'Museo de la Luz' AND estado = 'diseno';

-- 3. Extender la fecha de entrega de proyectos pausados.
UPDATE proyectos_arquitectura_023
SET fecha_entrega = DATE_ADD(fecha_entrega, INTERVAL 30 DAY),
    estado = 'revision'
WHERE estado = 'pausado';

-- 4. Verificar los proyectos residenciales actualizados.
SELECT nombre, tipo, presupuesto, estado
FROM proyectos_arquitectura_023
WHERE tipo = 'residencial'
ORDER BY presupuesto DESC;

-- 5. Consultar proyectos aprobados y sus fechas de entrega.
SELECT nombre, tipo, estado, fecha_entrega
FROM proyectos_arquitectura_023
WHERE estado = 'aprobado'
ORDER BY fecha_entrega ASC;

-- 6. Reporte de presupuesto por estado despues de las actualizaciones.
SELECT estado, COUNT(*) AS total_proyectos,
       SUM(presupuesto) AS presupuesto_total
FROM proyectos_arquitectura_023
GROUP BY estado
ORDER BY presupuesto_total DESC;
