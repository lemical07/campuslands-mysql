-- Ejercicio 047: consultas de tienda de ropa

USE campuslands_mysql;

SELECT nombre, categoria, talla, precio, stock
FROM prendas_tienda_047
WHERE estado <> 'agotado'
ORDER BY precio DESC;

SELECT categoria, COUNT(*) AS total_prendas,
       SUM(stock) AS unidades_disponibles
FROM prendas_tienda_047
GROUP BY categoria
ORDER BY unidades_disponibles DESC;

SELECT nombre, precio, stock
FROM prendas_tienda_047
WHERE stock > 0 AND precio BETWEEN 20 AND 80
ORDER BY precio;

SELECT talla, COUNT(*) AS total_prendas
FROM prendas_tienda_047
GROUP BY talla
ORDER BY total_prendas DESC;

SELECT nombre, fecha_ingreso
FROM prendas_tienda_047
WHERE fecha_ingreso >= '2026-08-04'
ORDER BY fecha_ingreso;
