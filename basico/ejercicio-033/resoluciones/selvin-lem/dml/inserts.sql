-- Ejercicio 033: datos del inventario de skins

USE campuslands_mysql;

INSERT INTO inventario_skins_033
    (nombre, arma, rareza, precio, desgaste, estado)
VALUES
    ('Nebula Roja', 'rifle', 'legendaria', 420.00, 8.50, 'equipada'),
    ('Acero Lunar', 'pistola', 'epica', 185.50, 15.00, 'disponible'),
    ('Fuego Urbano', 'escopeta', 'rara', 72.00, 30.25, 'disponible'),
    ('Bosque Pixel', 'rifle', 'comun', 24.90, 45.00, 'vendida'),
    ('Trueno Azul', 'francotirador', 'legendaria', 510.00, 5.75, 'disponible'),
    ('Arena Dorada', 'pistola', 'epica', 210.00, 12.40, 'equipada'),
    ('Hielo Profundo', 'subfusil', 'rara', 98.75, 22.10, 'disponible'),
    ('Sombra Tactica', 'cuchillo', 'legendaria', 630.00, 3.50, 'disponible'),
    ('Circuito Verde', 'subfusil', 'comun', 18.50, 55.00, 'vendida'),
    ('Cobre Vivo', 'escopeta', 'rara', 65.25, 35.80, 'disponible');
