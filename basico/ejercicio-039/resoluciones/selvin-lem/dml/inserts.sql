-- Ejercicio 039: datos de peleadores

USE campuslands_mysql;
INSERT INTO peleadores_kickboxing_039
    (nombre, categoria, edad, peso_kg, victorias, estado)
VALUES
    ('Alberto Cruz', 'ligero', 24, 67.50, 8, 'activo'),
    ('Brenda Silva', 'medio', 28, 72.00, 12, 'activo'),
    ('Carlos Leon', 'pesado', 31, 91.50, 15, 'preparacion'),
    ('Diana Ruiz', 'ligero', 22, 65.00, 6, 'activo'),
    ('Ernesto Paz', 'medio', 35, 78.25, 18, 'preparacion'),
    ('Fabiola Mora', 'pesado', 29, 88.00, 10, 'activo'),
    ('Gabriel Soto', 'ligero', 41, 66.75, 20, 'archivado'),
    ('Helena Diaz', 'medio', 38, 74.50, 14, 'activo'),
    ('Ivan Rios', 'pesado', 45, 95.00, 22, 'archivado'),
    ('Julia Vega', 'ligero', 26, 64.25, 9, 'preparacion');
