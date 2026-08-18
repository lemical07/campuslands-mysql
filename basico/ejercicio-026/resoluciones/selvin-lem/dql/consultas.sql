-- Ejercicio 026: consultas y validaciones simples

USE campuslands_mysql;

-- 1. Validar la clasificacion de vida de cada personaje.
SELECT nombre, puntos_vida,
       CASE
           WHEN puntos_vida >= 6000 THEN 'vida alta'
           WHEN puntos_vida >= 2500 THEN 'vida media'
           ELSE 'vida baja'
       END AS clasificacion_vida
FROM personajes_rpg_026
ORDER BY puntos_vida DESC;

-- 2. Validar la progresion segun el nivel.
SELECT nombre, nivel,
       CASE
           WHEN nivel >= 50 THEN 'nivel avanzado'
           WHEN nivel >= 20 THEN 'nivel intermedio'
           ELSE 'nivel inicial'
       END AS clasificacion_nivel
FROM personajes_rpg_026
ORDER BY nivel DESC;

-- 3. Consultar personajes activos con mana suficiente.
SELECT nombre, clase, nivel, puntos_mana
FROM personajes_rpg_026
WHERE estado = 'activo' AND puntos_mana >= 1000
ORDER BY puntos_mana DESC;

-- 4. Revisar personajes con valores equilibrados de vida y mana.
SELECT nombre, clase, puntos_vida, puntos_mana
FROM personajes_rpg_026
WHERE puntos_vida >= 2500 AND puntos_mana >= 1000
ORDER BY nombre ASC;

-- 5. Contar personajes por clase y estado.
SELECT clase, estado, COUNT(*) AS total_personajes
FROM personajes_rpg_026
GROUP BY clase, estado
ORDER BY clase ASC, total_personajes DESC;

-- 6. Consultar el promedio de atributos por clase.
SELECT clase, AVG(nivel) AS nivel_promedio,
       AVG(puntos_vida) AS vida_promedio,
       AVG(puntos_mana) AS mana_promedio
FROM personajes_rpg_026
GROUP BY clase
ORDER BY nivel_promedio DESC;
