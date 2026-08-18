-- Ejercicio 039: DELETE controlado y consultas

USE campuslands_mysql;

-- Eliminar solo los perfiles archivados.
DELETE FROM peleadores_kickboxing_039
WHERE estado = 'archivado';

-- Consultar peleadores activos.
SELECT nombre, categoria, peso_kg, victorias
FROM peleadores_kickboxing_039
WHERE estado = 'activo'
ORDER BY victorias DESC;

-- Resumir peleadores por categoria.
SELECT categoria, COUNT(*) AS total_peleadores,
       AVG(victorias) AS victorias_promedio
FROM peleadores_kickboxing_039
GROUP BY categoria
ORDER BY victorias_promedio DESC;

-- Consultar peleadores con mas de diez victorias.
SELECT nombre, categoria, victorias
FROM peleadores_kickboxing_039
WHERE victorias > 10
ORDER BY victorias DESC;

-- Revisar los pesos de la categoria medio.
SELECT nombre, peso_kg, estado
FROM peleadores_kickboxing_039
WHERE categoria = 'medio'
ORDER BY peso_kg;
