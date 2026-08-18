-- Ejercicio 058: consultas con filtros por estado

USE campuslands_mysql;

SELECT nombre, categoria, nivel, cupos
FROM cursos_academia_058
WHERE estado = 'activo' AND cupos > 0
ORDER BY cupos DESC;

SELECT nombre, categoria, duracion_horas
FROM cursos_academia_058
WHERE estado = 'revision'
ORDER BY duracion_horas;

SELECT nombre, nivel, cupos
FROM cursos_academia_058
WHERE estado = 'cerrado'
ORDER BY nombre;

SELECT nombre, nivel, categoria
FROM cursos_academia_058
WHERE estado = 'activo' AND nivel IN ('intermedio', 'avanzado')
ORDER BY nivel, nombre;

SELECT estado, COUNT(*) AS total_cursos,
       SUM(cupos) AS cupos_totales
FROM cursos_academia_058
GROUP BY estado
ORDER BY total_cursos DESC;
