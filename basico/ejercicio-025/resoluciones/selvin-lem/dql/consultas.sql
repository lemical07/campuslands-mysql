-- Ejercicio 025: consultas con COUNT y SUM

USE campuslands_mysql;

-- 1. Contar el total de formulas registradas.
SELECT COUNT(*) AS total_formulas
FROM formulas_quimicas_025;

-- 2. Contar formulas por categoria.
SELECT categoria, COUNT(*) AS total_formulas
FROM formulas_quimicas_025
GROUP BY categoria
ORDER BY total_formulas DESC, categoria ASC;

-- 3. Sumar los gramos utilizados por categoria.
SELECT categoria, SUM(gramos_material) AS gramos_totales
FROM formulas_quimicas_025
GROUP BY categoria
ORDER BY gramos_totales DESC;

-- 4. Contar formulas aprobadas y sumar sus gramos.
SELECT COUNT(*) AS formulas_aprobadas,
       SUM(gramos_material) AS gramos_aprobados
FROM formulas_quimicas_025
WHERE estado = 'aprobada';

-- 5. Resumir formulas por estado.
SELECT estado, COUNT(*) AS total_formulas,
       SUM(duracion_minutos) AS minutos_totales
FROM formulas_quimicas_025
GROUP BY estado
ORDER BY total_formulas DESC;

-- 6. Contar y sumar formulas con mas de 150 gramos.
SELECT COUNT(*) AS formulas_mayores,
       SUM(gramos_material) AS gramos_de_formulas_mayores
FROM formulas_quimicas_025
WHERE gramos_material > 150;
