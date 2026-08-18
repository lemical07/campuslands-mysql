-- Ejercicio 051: consultas con WHERE

USE campuslands_mysql;

SELECT titulo, categoria, precio
FROM proyectos_dibujo_051
WHERE estado = 'aprobado'
ORDER BY precio DESC;

SELECT titulo, horas, fecha_entrega
FROM proyectos_dibujo_051
WHERE horas BETWEEN 10 AND 25
ORDER BY horas;

SELECT titulo, categoria, estado
FROM proyectos_dibujo_051
WHERE categoria IN ('fantasia', 'retrato')
ORDER BY titulo;

SELECT titulo, precio, fecha_entrega
FROM proyectos_dibujo_051
WHERE precio > 500 AND fecha_entrega >= '2026-09-01'
ORDER BY fecha_entrega;

SELECT estado, COUNT(*) AS total_proyectos,
       AVG(precio) AS precio_promedio
FROM proyectos_dibujo_051
GROUP BY estado
ORDER BY total_proyectos DESC;
