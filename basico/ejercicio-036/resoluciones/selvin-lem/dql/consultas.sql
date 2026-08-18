-- Ejercicio 036: consultas con WHERE

USE campuslands_mysql;

-- 1. Autos disponibles con mas de 1000 caballos.
SELECT marca, modelo, potencia_hp, precio
FROM autos_hiperdeportivos_036
WHERE estado = 'disponible' AND potencia_hp > 1000
ORDER BY potencia_hp DESC;

-- 2. Autos italianos disponibles.
SELECT marca, modelo, precio
FROM autos_hiperdeportivos_036
WHERE pais = 'Italia' AND estado = 'disponible'
ORDER BY precio ASC;

-- 3. Autos dentro del rango de precio indicado.
SELECT marca, modelo, precio
FROM autos_hiperdeportivos_036
WHERE precio BETWEEN 500000 AND 2000000
ORDER BY precio DESC;

-- 4. Resumen por pais.
SELECT pais, COUNT(*) AS total_autos,
       AVG(potencia_hp) AS potencia_promedio
FROM autos_hiperdeportivos_036
GROUP BY pais
ORDER BY total_autos DESC, potencia_promedio DESC;

-- 5. Autos que no han sido vendidos.
SELECT marca, modelo, estado
FROM autos_hiperdeportivos_036
WHERE estado <> 'vendido'
ORDER BY marca, modelo;
