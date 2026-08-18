-- Ejercicio 028: consultas con filtros por estado

USE campuslands_mysql;

-- 1. Cursos activos con cupos disponibles.
SELECT nombre, categoria, nivel, cupos_disponibles
FROM cursos_academia_028
WHERE estado = 'activo' AND cupos_disponibles > 0
ORDER BY cupos_disponibles DESC;

-- 2. Cursos que estan en revision.
SELECT nombre, categoria, nivel, duracion_horas
FROM cursos_academia_028
WHERE estado = 'revision'
ORDER BY duracion_horas ASC;

-- 3. Cursos cerrados sin cupos.
SELECT nombre, categoria, nivel
FROM cursos_academia_028
WHERE estado = 'cerrado' AND cupos_disponibles = 0
ORDER BY nombre;

-- 4. Cursos intermedios o avanzados que siguen activos.
SELECT nombre, nivel, categoria
FROM cursos_academia_028
WHERE estado = 'activo' AND nivel IN ('intermedio', 'avanzado')
ORDER BY nivel, nombre;

-- 5. Resumen de cursos por estado.
SELECT estado, COUNT(*) AS total_cursos,
       SUM(cupos_disponibles) AS cupos_totales
FROM cursos_academia_028
GROUP BY estado
ORDER BY total_cursos DESC;

-- 6. Cursos de larga duracion disponibles para inscripcion.
SELECT nombre, duracion_horas, cupos_disponibles
FROM cursos_academia_028
WHERE estado = 'activo' AND duracion_horas >= 40
ORDER BY duracion_horas DESC;
