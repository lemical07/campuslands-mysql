-- Ejercicio 040: consultas con COUNT y SUM

USE campuslands_mysql;

-- 1. Contar participantes por categoria.
SELECT categoria, COUNT(*) AS total_participantes
FROM participantes_carreras_040
GROUP BY categoria
ORDER BY total_participantes DESC;

-- 2. Sumar ingresos pagados por categoria.
SELECT categoria, SUM(cuota) AS ingresos_pagados
FROM participantes_carreras_040
WHERE pago = 'pagado'
GROUP BY categoria
ORDER BY ingresos_pagados DESC;

-- 3. Contar participantes por ciudad.
SELECT ciudad, COUNT(*) AS total_corredores
FROM participantes_carreras_040
GROUP BY ciudad
ORDER BY total_corredores DESC, ciudad;

-- 4. Resumir corredores e ingresos pendientes.
SELECT COUNT(*) AS pagos_pendientes,
       SUM(cuota) AS valor_pendiente
FROM participantes_carreras_040
WHERE pago = 'pendiente';

-- 5. Contar participantes por distancia.
SELECT distancia_km, COUNT(*) AS total_participantes,
       SUM(cuota) AS cuotas_totales
FROM participantes_carreras_040
GROUP BY distancia_km
ORDER BY distancia_km;
