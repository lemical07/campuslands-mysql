-- Ejercicio 040: datos de carreras urbanas

USE campuslands_mysql;
INSERT INTO participantes_carreras_040
    (nombre, ciudad, categoria, distancia_km, cuota, pago)
VALUES
    ('Ana Torres', 'Bogota', 'amateur', 10.00, 25.00, 'pagado'),
    ('Bruno Leon', 'Medellin', 'profesional', 21.00, 45.00, 'pagado'),
    ('Celia Mora', 'Cali', 'juvenil', 5.00, 15.00, 'pendiente'),
    ('Dario Vega', 'Bogota', 'amateur', 10.00, 25.00, 'pagado'),
    ('Elena Cruz', 'Pereira', 'profesional', 42.00, 60.00, 'pagado'),
    ('Fabian Soto', 'Cali', 'amateur', 5.00, 15.00, 'pendiente'),
    ('Gina Torres', 'Medellin', 'juvenil', 5.00, 15.00, 'pagado'),
    ('Hugo Diaz', 'Bogota', 'profesional', 21.00, 45.00, 'pagado'),
    ('Iris Pardo', 'Pereira', 'amateur', 10.00, 25.00, 'pendiente'),
    ('Joel Ruiz', 'Cali', 'profesional', 42.00, 60.00, 'pagado');
