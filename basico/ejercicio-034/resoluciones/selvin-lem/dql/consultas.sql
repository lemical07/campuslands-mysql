-- Ejercicio 034: consultas del garaje de motos

USE campuslands_mysql;

-- 1. Mostrar motos disponibles.
SELECT id, marca, modelo, cilindrada, precio
FROM motos_garaje_034
WHERE estado = 'disponible'
ORDER BY precio ASC;

-- 2. Consultar motos de alta cilindrada.
SELECT marca, modelo, cilindrada, precio
FROM motos_garaje_034
WHERE cilindrada >= 500
ORDER BY cilindrada DESC;

-- 3. Contar motos por marca.
SELECT marca, COUNT(*) AS total_motos
FROM motos_garaje_034
GROUP BY marca
ORDER BY total_motos DESC, marca;

-- 4. Calcular el valor del inventario disponible.
SELECT COUNT(*) AS motos_disponibles,
       SUM(precio) AS valor_inventario
FROM motos_garaje_034
WHERE estado = 'disponible';

-- 5. Consultar motos ingresadas durante la primera semana.
SELECT marca, modelo, fecha_ingreso
FROM motos_garaje_034
WHERE fecha_ingreso BETWEEN '2026-08-01' AND '2026-08-07'
ORDER BY fecha_ingreso;
