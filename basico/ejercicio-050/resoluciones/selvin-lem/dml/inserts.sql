-- Ejercicio 050: datos de citas de tatuajes

USE campuslands_mysql;
INSERT INTO citas_tatuajes_050
    (cliente, artista, estilo, duracion_horas, precio, fecha_cita, estado)
VALUES
    ('Ana Torres', 'Lina', 'realismo', 4.00, 450.00, '2026-08-01', 'realizada'),
    ('Bruno Leon', 'Marco', 'geometrico', 2.50, 280.00, '2026-08-03', 'reservada'),
    ('Celia Mora', 'Lina', 'floral', 3.00, 320.00, '2026-08-05', 'realizada'),
    ('Dario Vega', 'Sofia', 'japones', 5.50, 650.00, '2026-08-07', 'reservada'),
    ('Elena Cruz', 'Marco', 'minimalista', 1.50, 180.00, '2026-08-09', 'cancelada'),
    ('Fabian Soto', 'Sofia', 'realismo', 6.00, 720.00, '2026-08-11', 'reservada'),
    ('Gina Torres', 'Lina', 'blackwork', 3.50, 390.00, '2026-08-13', 'realizada'),
    ('Hugo Diaz', 'Marco', 'geometrico', 2.00, 220.00, '2026-08-15', 'reservada');
