-- Ejercicio 022: consultas con ORDER BY

USE campuslands_mysql;

-- 1. Escenas ordenadas por puntaje de mayor a menor.
SELECT nombre, categoria, puntaje
FROM escenas_animacion_022
ORDER BY puntaje DESC;

-- 2. Escenas ordenadas por duracion de menor a mayor.
SELECT nombre, duracion_segundos, estado
FROM escenas_animacion_022
ORDER BY duracion_segundos ASC;

-- 3. Escenas agrupadas visualmente por categoria y ordenadas por nombre.
SELECT nombre, categoria, puntaje
FROM escenas_animacion_022
ORDER BY categoria ASC, nombre ASC;

-- 4. Las cinco escenas con mejor puntaje.
SELECT nombre, categoria, puntaje
FROM escenas_animacion_022
ORDER BY puntaje DESC
LIMIT 5;

-- 5. Escenas activas ordenadas por fecha de creacion mas reciente.
SELECT nombre, estado, fecha_creacion
FROM escenas_animacion_022
WHERE estado = 'activo'
ORDER BY fecha_creacion DESC;

-- 6. Reporte por estado ordenado por promedio de puntaje.
SELECT estado, COUNT(*) AS total_escenas, AVG(puntaje) AS puntaje_promedio
FROM escenas_animacion_022
GROUP BY estado
ORDER BY puntaje_promedio DESC;
