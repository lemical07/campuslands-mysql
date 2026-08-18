-- Ejercicio 047: datos de tienda de ropa

USE campuslands_mysql;
INSERT INTO prendas_tienda_047
    (nombre, categoria, talla, color, precio, stock, fecha_ingreso, estado)
VALUES
    ('Camisa urbana', 'camisa', 'M', 'azul', 28.00, 20, '2026-08-01', 'disponible'),
    ('Pantalon cargo', 'pantalon', 'L', 'negro', 48.00, 12, '2026-08-02', 'disponible'),
    ('Chaqueta denim', 'chaqueta', 'M', 'azul', 75.00, 8, '2026-08-03', 'oferta'),
    ('Tenis urbanos', 'calzado', 'L', 'blanco', 95.00, 5, '2026-08-04', 'disponible'),
    ('Gorra clasica', 'accesorio', 'S', 'rojo', 18.00, 30, '2026-08-05', 'disponible'),
    ('Camisa formal', 'camisa', 'L', 'blanco', 42.00, 0, '2026-08-06', 'agotado'),
    ('Pantalon denim', 'pantalon', 'M', 'gris', 55.00, 10, '2026-08-07', 'oferta'),
    ('Botas de calle', 'calzado', 'XL', 'marron', 110.00, 4, '2026-08-08', 'disponible');
