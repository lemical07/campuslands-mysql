-- Ejercicio 035: datos del taller mecanico

USE campuslands_mysql;
INSERT INTO servicios_taller_035
    (cliente, motocicleta, servicio, costo, horas_estimadas, estado, fecha_ingreso)
VALUES
    ('Ana Torres', 'Honda CB190R', 'cambio de aceite', 85.00, 2, 'entregada', '2026-08-01'),
    ('Bruno Leon', 'Yamaha MT-03', 'revision general', 240.00, 5, 'en_proceso', '2026-08-02'),
    ('Celia Mora', 'Suzuki GSX-S750', 'cambio de frenos', 310.50, 6, 'terminada', '2026-08-03'),
    ('Dario Vega', 'Kawasaki Ninja 400', 'ajuste de suspension', 450.00, 8, 'recibida', '2026-08-04'),
    ('Elena Cruz', 'BMW G 310 R', 'mantenimiento completo', 520.00, 10, 'en_proceso', '2026-08-05'),
    ('Fabian Soto', 'Ducati Scrambler', 'cambio de cadena', 180.75, 4, 'entregada', '2026-08-06'),
    ('Gina Torres', 'Honda XR150L', 'reparacion electrica', 275.00, 7, 'terminada', '2026-08-07'),
    ('Hugo Diaz', 'Yamaha FZ25', 'cambio de llantas', 390.00, 5, 'recibida', '2026-08-08'),
    ('Iris Pardo', 'KTM Duke 390', 'diagnostico motor', 160.00, 3, 'en_proceso', '2026-08-09'),
    ('Joel Ruiz', 'Royal Enfield Himalayan', 'revision de luces', 95.00, 2, 'entregada', '2026-08-10');
