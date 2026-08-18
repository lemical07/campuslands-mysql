-- Ejercicio 034: insercion de motos

USE campuslands_mysql;

INSERT INTO motos_garaje_034
    (marca, modelo, cilindrada, precio, color, estado, fecha_ingreso)
VALUES
    ('Honda', 'CB190R', 190, 4200.00, 'rojo', 'disponible', '2026-08-01'),
    ('Yamaha', 'MT-03', 321, 6800.00, 'azul', 'reservada', '2026-08-02'),
    ('Suzuki', 'GSX-S750', 749, 8900.00, 'negro', 'disponible', '2026-08-03'),
    ('Kawasaki', 'Ninja 400', 399, 7600.00, 'verde', 'vendida', '2026-08-04'),
    ('BMW', 'G 310 R', 313, 7100.00, 'blanco', 'disponible', '2026-08-05'),
    ('Ducati', 'Scrambler', 803, 11200.00, 'amarillo', 'reservada', '2026-08-06'),
    ('Honda', 'XR150L', 149, 3500.00, 'gris', 'disponible', '2026-08-07'),
    ('Yamaha', 'FZ25', 249, 4800.00, 'negro', 'disponible', '2026-08-08'),
    ('Royal Enfield', 'Himalayan', 411, 6200.00, 'verde', 'vendida', '2026-08-09'),
    ('KTM', 'Duke 390', 373, 7350.00, 'naranja', 'disponible', '2026-08-10');
