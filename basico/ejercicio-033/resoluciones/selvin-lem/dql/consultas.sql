-- Ejercicio 033: consultas del inventario de skins

USE campuslands_mysql;

-- 1. Mostrar todas las skins disponibles.
SELECT id, nombre, arma, rareza, precio
FROM inventario_skins_033
WHERE estado = 'disponible'
ORDER BY precio DESC;

-- 2. Consultar skins legendarias.
SELECT id, nombre, arma, precio, desgaste
FROM inventario_skins_033
WHERE rareza = 'legendaria'
ORDER BY precio DESC;

-- 3. Contar skins por rareza.
SELECT rareza, COUNT(*) AS total_skins,
       AVG(precio) AS precio_promedio
FROM inventario_skins_033
GROUP BY rareza
ORDER BY total_skins DESC;

-- 4. Calcular el valor total de skins disponibles.
SELECT COUNT(*) AS skins_disponibles,
       SUM(precio) AS valor_total
FROM inventario_skins_033
WHERE estado = 'disponible';

-- 5. Consultar skins con poco desgaste.
SELECT id, nombre, arma, desgaste
FROM inventario_skins_033
WHERE desgaste < 20
ORDER BY desgaste ASC;
