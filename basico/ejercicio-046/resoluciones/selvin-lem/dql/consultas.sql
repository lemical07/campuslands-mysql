-- Ejercicio 046: consultas del menu

USE campuslands_mysql;

SELECT nombre, categoria, precio
FROM menu_urbano_046
WHERE disponible = TRUE
ORDER BY precio DESC;

SELECT categoria, COUNT(*) AS total_productos,
       AVG(precio) AS precio_promedio
FROM menu_urbano_046
GROUP BY categoria
ORDER BY total_productos DESC;

SELECT nombre, ventas_estimadas,
       precio * ventas_estimadas AS ingreso_estimado
FROM menu_urbano_046
ORDER BY ingreso_estimado DESC;

SELECT nombre, categoria, precio
FROM menu_urbano_046
WHERE precio BETWEEN 5 AND 15
ORDER BY precio;

SELECT categoria, SUM(ventas_estimadas) AS ventas_totales
FROM menu_urbano_046
GROUP BY categoria
ORDER BY ventas_totales DESC;
