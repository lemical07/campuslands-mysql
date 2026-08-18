-- Ejercicio 044: datos de la saga de ciencia ficcion

USE campuslands_mysql;
INSERT INTO producciones_ciencia_044
    (titulo, tipo, fecha_inicio, fecha_final, presupuesto, estado)
VALUES
    ('Origen estelar', 'pelicula', '2026-01-10', '2026-08-20', 1800000.00, 'finalizada'),
    ('Mision Europa', 'mision', '2026-02-01', '2026-09-15', 950000.00, 'activa'),
    ('Colonias de Marte', 'serie', '2026-03-12', '2027-02-28', 2400000.00, 'activa'),
    ('El portal', 'pelicula', '2026-04-05', '2026-11-10', 1300000.00, 'activa'),
    ('Nave Aurora', 'mision', '2026-05-20', '2026-07-30', 620000.00, 'finalizada'),
    ('Horizonte oscuro', 'serie', '2026-06-01', '2027-04-20', 3100000.00, 'activa'),
    ('Codigo Titan', 'pelicula', '2026-08-01', '2027-01-15', 1550000.00, 'planificada'),
    ('Luna exterior', 'mision', '2026-09-10', '2027-03-12', 780000.00, 'planificada');
