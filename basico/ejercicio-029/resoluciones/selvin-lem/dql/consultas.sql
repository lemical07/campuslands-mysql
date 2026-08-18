-- Ejercicio 029: consultas con fechas

USE campuslands_mysql;

-- 1. Productos publicados durante julio de 2026.
SELECT nombre, categoria, fecha_publicacion
FROM productos_marketplace_029
WHERE fecha_publicacion BETWEEN '2026-07-01' AND '2026-07-31'
ORDER BY fecha_publicacion;

-- 2. Productos actualizados desde agosto de 2026.
SELECT nombre, fecha_actualizacion, estado
FROM productos_marketplace_029
WHERE fecha_actualizacion >= '2026-08-01'
ORDER BY fecha_actualizacion DESC;

-- 3. Promociones que terminan durante agosto.
SELECT nombre, descuento, fecha_fin_promocion
FROM productos_marketplace_029
WHERE fecha_fin_promocion BETWEEN '2026-08-01' AND '2026-08-31'
ORDER BY fecha_fin_promocion;

-- 4. Dias transcurridos entre publicacion y actualizacion.
SELECT nombre, DATEDIFF(fecha_actualizacion, fecha_publicacion) AS dias_hasta_actualizacion
FROM productos_marketplace_029
ORDER BY dias_hasta_actualizacion DESC;

-- 5. Productos disponibles con descuento mayor al 10 por ciento.
SELECT nombre, precio, descuento, fecha_fin_promocion
FROM productos_marketplace_029
WHERE estado = 'disponible' AND descuento > 10
ORDER BY descuento DESC, nombre;

-- 6. Resumen de productos por categoria y fecha mas reciente.
SELECT categoria, COUNT(*) AS total_productos,
       MAX(fecha_actualizacion) AS ultima_actualizacion
FROM productos_marketplace_029
GROUP BY categoria
ORDER BY ultima_actualizacion DESC;
