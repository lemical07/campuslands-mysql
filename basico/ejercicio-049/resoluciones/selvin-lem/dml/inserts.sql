-- Ejercicio 049: datos de saltos de paracaidismo

USE campuslands_mysql;
INSERT INTO saltos_paracaidismo_049
    (participante, zona, altura_metros, experiencia_saltos, costo, estado, fecha_salto)
VALUES
    ('Ana Torres', 'Valle Azul', 3000, 12, 280.00, 'realizado', '2026-08-01'),
    ('Bruno Leon', 'Canyon Norte', 3500, 4, 320.00, 'programado', '2026-08-03'),
    ('Celia Mora', 'Valle Azul', 2500, 1, 240.00, 'programado', '2026-08-05'),
    ('Dario Vega', 'Costa Brisa', 4000, 25, 390.00, 'realizado', '2026-08-07'),
    ('Elena Cruz', 'Canyon Norte', 3000, 8, 280.00, 'programado', '2026-08-09'),
    ('Fabian Soto', 'Montana Alta', 4500, 31, 450.00, 'realizado', '2026-08-11'),
    ('Gina Torres', 'Costa Brisa', 2500, 2, 240.00, 'cancelado', '2026-08-13'),
    ('Hugo Diaz', 'Montana Alta', 4000, 16, 390.00, 'programado', '2026-08-15');
