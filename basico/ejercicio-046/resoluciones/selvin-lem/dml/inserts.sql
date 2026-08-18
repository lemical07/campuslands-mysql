-- Ejercicio 046: datos del menu urbano

USE campuslands_mysql;
INSERT INTO menu_urbano_046
    (nombre, categoria, precio, ventas_estimadas, disponible)
VALUES
    ('Hamburguesa clasica', 'hamburguesa', 12.50, 80, TRUE),
    ('Hamburguesa doble', 'hamburguesa', 17.00, 65, TRUE),
    ('Pizza personal', 'pizza', 10.00, 55, TRUE),
    ('Pizza familiar', 'pizza', 22.00, 40, TRUE),
    ('Papas sazonadas', 'acompanamiento', 5.50, 90, TRUE),
    ('Alitas picantes', 'acompanamiento', 11.00, 48, TRUE),
    ('Limonada natural', 'bebida', 4.00, 100, TRUE),
    ('Malteada de chocolate', 'bebida', 7.50, 35, FALSE),
    ('Brownie caliente', 'postre', 6.00, 42, TRUE),
    ('Cheesecake urbano', 'postre', 8.00, 28, TRUE);
