-- Ejercicio 024: datos de trabajos de soldadura

USE campuslands_mysql;

INSERT INTO trabajos_soldadura_024
    (nombre, tipo_soldadura, costo, piezas, estado, fecha_registro)
VALUES
    ('Estructura metalica A', 'MIG', 1850.00, 24, 'activo', '2026-08-01'),
    ('Reparacion de tuberia', 'TIG', 620.00, 8, 'revision', '2026-08-03'),
    ('Soporte industrial', 'electrodo', 940.00, 16, 'finalizado', '2026-08-05'),
    ('Marco de seguridad', 'MIG', 780.00, 12, 'activo', '2026-08-07'),
    ('Tanque de acero', 'TIG', 2400.00, 32, 'revision', '2026-08-09'),
    ('Baranda exterior', 'electrodo', 510.00, 10, 'finalizado', '2026-08-11'),
    ('Carro de transporte', 'MIG', 1320.00, 20, 'archivado', '2026-08-13'),
    ('Rejilla de ventilacion', 'electrodo', 430.00, 14, 'activo', '2026-08-15'),
    ('Base para motor', 'TIG', 1180.00, 9, 'archivado', '2026-08-17'),
    ('Escalera industrial', 'MIG', 1560.00, 18, 'finalizado', '2026-08-19');
