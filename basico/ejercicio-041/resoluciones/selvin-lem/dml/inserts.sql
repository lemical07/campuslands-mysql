-- Ejercicio 041: datos de jugadores de pingpong

USE campuslands_mysql;
INSERT INTO jugadores_pingpong_041
    (nombre, edad, ranking, victorias, derrotas, estado)
VALUES
    ('Alicia Mora', 19, 42, 18, 4, 'activo'),
    ('Bruno Perez', 24, 15, 25, 3, 'activo'),
    ('Carla Ruiz', 17, 80, 12, 8, 'activo'),
    ('Diego Leon', 31, 120, 20, 9, 'lesionado'),
    ('Elena Soto', 28, 7, 31, 2, 'activo'),
    ('Fabian Cruz', 16, 210, 9, 10, 'activo'),
    ('Gabriela Diaz', 35, 350, 14, 12, 'retirado'),
    ('Hector Rios', 22, 66, 22, 6, 'activo'),
    ('Irene Paz', 14, 500, 6, 7, 'activo'),
    ('Jorge Vega', 40, 275, 17, 15, 'lesionado');
