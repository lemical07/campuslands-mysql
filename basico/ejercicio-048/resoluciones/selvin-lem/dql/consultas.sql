-- Ejercicio 048: consultas de paquetes de viaje

USE campuslands_mysql;

SELECT id, destino, pais, dias, precio
FROM paquetes_viaje_048
WHERE estado = 'disponible'
ORDER BY precio;

SELECT pais, COUNT(*) AS total_paquetes,
       AVG(precio) AS precio_promedio
FROM paquetes_viaje_048
GROUP BY pais
ORDER BY precio_promedio DESC;

SELECT destino, dias, precio
FROM paquetes_viaje_048
WHERE dias >= 6 AND cupos > 0
ORDER BY dias DESC, precio DESC;

SELECT estado, COUNT(*) AS total_paquetes,
       SUM(cupos) AS cupos_totales
FROM paquetes_viaje_048
GROUP BY estado
ORDER BY cupos_totales DESC;

SELECT id, destino, pais
FROM paquetes_viaje_048
WHERE precio BETWEEN 700 AND 1300
ORDER BY precio;
