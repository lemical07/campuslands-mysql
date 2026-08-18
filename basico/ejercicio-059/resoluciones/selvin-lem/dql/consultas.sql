-- Ejercicio 059: consultas de fechas

USE campuslands_mysql;

SELECT nombre, categoria, fecha_publicacion
FROM productos_marketplace_059
WHERE fecha_publicacion BETWEEN '2026-07-01' AND '2026-07-31'
ORDER BY fecha_publicacion;

SELECT nombre, fecha_actualizacion, estado
FROM productos_marketplace_059
WHERE fecha_actualizacion >= '2026-08-01'
ORDER BY fecha_actualizacion DESC;

SELECT nombre, descuento, fecha_fin_promocion
FROM productos_marketplace_059
WHERE fecha_fin_promocion BETWEEN '2026-08-01' AND '2026-08-31'
ORDER BY fecha_fin_promocion;

SELECT nombre, DATEDIFF(fecha_actualizacion, fecha_publicacion) AS dias_hasta_actualizacion
FROM productos_marketplace_059
ORDER BY dias_hasta_actualizacion DESC;

SELECT nombre, precio, descuento
FROM productos_marketplace_059
WHERE estado = 'disponible' AND descuento > 10
ORDER BY descuento DESC;
