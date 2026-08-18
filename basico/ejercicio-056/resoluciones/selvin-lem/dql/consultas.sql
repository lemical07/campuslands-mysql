-- Ejercicio 056: consultas y validaciones RPG

USE campuslands_mysql;

SELECT nombre, nivel,
       CASE
           WHEN nivel >= 50 THEN 'avanzado'
           WHEN nivel >= 20 THEN 'intermedio'
           ELSE 'inicial'
       END AS clasificacion_nivel
FROM personajes_rpg_056
ORDER BY nivel DESC;

SELECT nombre, vida,
       CASE
           WHEN vida >= 6000 THEN 'vida alta'
           WHEN vida >= 2500 THEN 'vida media'
           ELSE 'vida baja'
       END AS clasificacion_vida
FROM personajes_rpg_056
ORDER BY vida DESC;

SELECT nombre, clase, mana
FROM personajes_rpg_056
WHERE estado = 'activo' AND mana >= 1000
ORDER BY mana DESC;

SELECT clase, COUNT(*) AS total_personajes,
       AVG(nivel) AS nivel_promedio
FROM personajes_rpg_056
GROUP BY clase
ORDER BY nivel_promedio DESC;

SELECT estado, COUNT(*) AS total_personajes,
       SUM(vida) AS vida_total
FROM personajes_rpg_056
GROUP BY estado
ORDER BY vida_total DESC;
