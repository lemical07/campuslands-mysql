-- Ejercicio 023: datos de proyectos de arquitectura 3D

USE campuslands_mysql;

INSERT INTO proyectos_arquitectura_023
    (nombre, tipo, presupuesto, pisos, estado, fecha_entrega)
VALUES
    ('Torre Horizonte', 'residencial', 185000.00, 18, 'revision', '2026-09-10'),
    ('Casa del Lago', 'residencial', 92000.00, 2, 'diseno', '2026-08-28'),
    ('Centro Cultural Norte', 'cultural', 240000.00, 5, 'aprobado', '2026-10-15'),
    ('Oficinas Prisma', 'corporativo', 315000.00, 12, 'revision', '2026-11-01'),
    ('Museo de la Luz', 'cultural', 275000.00, 4, 'diseno', '2026-12-05'),
    ('Hotel Mirador', 'hotelero', 198000.00, 9, 'pausado', '2026-10-25'),
    ('Clinica Central', 'salud', 360000.00, 7, 'revision', '2027-01-20'),
    ('Parque Empresarial', 'corporativo', 450000.00, 6, 'diseno', '2027-02-12'),
    ('Biblioteca Abierta', 'cultural', 150000.00, 3, 'aprobado', '2026-09-30'),
    ('Residencias Sol', 'residencial', 128000.00, 8, 'diseno', '2026-11-18');
