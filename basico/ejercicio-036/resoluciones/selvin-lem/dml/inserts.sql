-- Ejercicio 036: datos de autos hiperdeportivos

USE campuslands_mysql;
INSERT INTO autos_hiperdeportivos_036
    (marca, modelo, pais, potencia_hp, precio, estado)
VALUES
    ('Ferrari', 'SF90 Stradale', 'Italia', 986, 520000.00, 'disponible'),
    ('Lamborghini', 'Revuelto', 'Italia', 1001, 610000.00, 'reservado'),
    ('McLaren', '750S', 'Reino Unido', 740, 350000.00, 'disponible'),
    ('Porsche', '918 Spyder', 'Alemania', 887, 780000.00, 'vendido'),
    ('Bugatti', 'Chiron', 'Francia', 1479, 2400000.00, 'disponible'),
    ('Koenigsegg', 'Jesko', 'Suecia', 1281, 3000000.00, 'reservado'),
    ('Aston Martin', 'Valkyrie', 'Reino Unido', 1160, 2700000.00, 'disponible'),
    ('Rimac', 'Nevera', 'Croacia', 1914, 2200000.00, 'vendido'),
    ('Pagani', 'Huayra', 'Italia', 827, 1900000.00, 'disponible'),
    ('Mercedes-AMG', 'One', 'Alemania', 1049, 2800000.00, 'reservado');
