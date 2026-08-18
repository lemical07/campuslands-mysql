-- Ejercicio 053: actualizaciones de arquitectura 3D

USE campuslands_mysql;

UPDATE proyectos_arquitectura_053
SET presupuesto = presupuesto * 1.08
WHERE tipo = 'residencial' AND estado = 'revision';

UPDATE proyectos_arquitectura_053
SET estado = 'aprobado'
WHERE nombre = 'Museo de la Luz' AND estado = 'diseno';

UPDATE proyectos_arquitectura_053
SET fecha_entrega = DATE_ADD(fecha_entrega, INTERVAL 30 DAY),
    estado = 'revision'
WHERE estado = 'pausado';

SELECT nombre, tipo, presupuesto, estado
FROM proyectos_arquitectura_053
ORDER BY presupuesto DESC;

SELECT estado, COUNT(*) AS total_proyectos,
       SUM(presupuesto) AS presupuesto_total
FROM proyectos_arquitectura_053
GROUP BY estado
ORDER BY presupuesto_total DESC;
