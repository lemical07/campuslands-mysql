-- Ejercicio 025: datos de formulas quimicas

USE campuslands_mysql;

INSERT INTO formulas_quimicas_025
    (nombre, categoria, gramos_material, duracion_minutos, estado, fecha_experimento)
VALUES
    ('Solucion conductora A', 'electroquimica', 125.50, 90, 'aprobada', '2026-08-01'),
    ('Polimero flexible B', 'polimeros', 240.00, 150, 'en_prueba', '2026-08-03'),
    ('Catalizador verde C', 'catalizadores', 85.75, 120, 'aprobada', '2026-08-05'),
    ('Pigmento mineral D', 'pigmentos', 310.25, 60, 'pendiente', '2026-08-07'),
    ('Gel protector E', 'polimeros', 175.00, 180, 'en_prueba', '2026-08-09'),
    ('Reactivo acido F', 'electroquimica', 95.50, 45, 'descartada', '2026-08-11'),
    ('Mezcla organica G', 'organica', 420.00, 240, 'aprobada', '2026-08-13'),
    ('Base neutralizante H', 'organica', 210.75, 75, 'pendiente', '2026-08-15'),
    ('Solvente tecnico I', 'electroquimica', 360.00, 100, 'en_prueba', '2026-08-17'),
    ('Recubrimiento J', 'pigmentos', 280.50, 135, 'aprobada', '2026-08-19');
