-- Ejercicio 055: consultas con COUNT y SUM

USE campuslands_mysql;

SELECT COUNT(*) AS total_experimentos
FROM experimentos_quimicos_055;

SELECT categoria, COUNT(*) AS total_experimentos,
       SUM(gramos_material) AS gramos_totales
FROM experimentos_quimicos_055
GROUP BY categoria
ORDER BY gramos_totales DESC;

SELECT estado, COUNT(*) AS total_experimentos,
       SUM(duracion_minutos) AS minutos_totales
FROM experimentos_quimicos_055
GROUP BY estado
ORDER BY total_experimentos DESC;

SELECT COUNT(*) AS experimentos_aprobados,
       SUM(gramos_material) AS gramos_aprobados
FROM experimentos_quimicos_055
WHERE estado = 'aprobado';

SELECT COUNT(*) AS formulas_grandes,
       SUM(gramos_material) AS gramos_formulas_grandes
FROM experimentos_quimicos_055
WHERE gramos_material > 150;
