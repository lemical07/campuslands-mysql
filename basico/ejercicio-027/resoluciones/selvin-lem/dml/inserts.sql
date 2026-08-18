-- Ejercicio 027: datos del videojuego de accion y aventura

USE campuslands_mysql;

INSERT INTO personajes_aventura_027 (nombre, clase, nivel, experiencia) VALUES
('Ayla', 'exploradora', 18, 4200),
('Bran', 'guerrero', 25, 7800),
('Ciro', 'inventor', 12, 2500),
('Dara', 'guardiana', 31, 11200),
('Eron', 'rastreador', 22, 6400),
('Fara', 'sanadora', 16, 3900),
('Galen', 'guerrero', 38, 15800),
('Hira', 'exploradora', 9, 1700),
('Ivo', 'inventor', 27, 8200),
('Juna', 'sanadora', 20, 5600);

INSERT INTO misiones_aventura_027 (nombre, dificultad, experiencia_recompensa, estado) VALUES
('El mapa perdido', 'facil', 800, 'completada'),
('Ruinas del norte', 'media', 1500, 'activa'),
('La torre olvidada', 'dificil', 2600, 'disponible'),
('Defensa del puerto', 'media', 1800, 'activa'),
('El dragon de ceniza', 'epica', 5000, 'disponible'),
('Sendero de cristal', 'facil', 700, 'completada'),
('Rescate en la mina', 'dificil', 3000, 'activa'),
('El santuario oculto', 'epica', 4500, 'disponible');

INSERT INTO participaciones_aventura_027 (personaje_id, mision_id, progreso) VALUES
(1, 2, 60), (2, 2, 80), (4, 4, 100), (5, 7, 35),
(7, 7, 75), (8, 1, 100), (9, 3, 10), (10, 6, 100);

INSERT INTO recompensas_aventura_027 (mision_id, nombre, valor) VALUES
(1, 'Brújula antigua', 300),
(2, 'Armadura del norte', 1200),
(3, 'Llave de obsidiana', 1800),
(4, 'Medalla del puerto', 900),
(5, 'Fragmento de dragon', 4000),
(6, 'Cristal de sendero', 250),
(7, 'Pico reforzado', 1500),
(8, 'Amuleto oculto', 3500);
