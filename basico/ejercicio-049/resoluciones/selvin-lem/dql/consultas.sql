-- Ejercicio 049: consultas de paracaidismo

USE campuslands_mysql;

SELECT participante, zona, altura_metros, fecha_salto
FROM saltos_paracaidismo_049
WHERE estado = 'programado'
ORDER BY fecha_salto;

SELECT zona, COUNT(*) AS total_saltos,
       AVG(altura_metros) AS altura_promedio
FROM saltos_paracaidismo_049
GROUP BY zona
ORDER BY total_saltos DESC;

SELECT participante, experiencia_saltos, altura_metros
FROM saltos_paracaidismo_049
WHERE experiencia_saltos >= 10
ORDER BY experiencia_saltos DESC;

SELECT estado, COUNT(*) AS total_saltos,
       SUM(costo) AS costo_total
FROM saltos_paracaidismo_049
GROUP BY estado
ORDER BY total_saltos DESC;

SELECT participante, zona, costo
FROM saltos_paracaidismo_049
WHERE altura_metros >= 3500 AND estado <> 'cancelado'
ORDER BY altura_metros DESC;
