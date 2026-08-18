-- Ejercicio 048: datos de viajes y turismo

USE campuslands_mysql;
INSERT INTO paquetes_viaje_048
    (destino, pais, dias, precio, cupos, estado)
VALUES
    ('Cartagena colonial', 'Colombia', 4, 520.00, 12, 'disponible'),
    ('Cusco historico', 'Peru', 6, 780.00, 8, 'disponible'),
    ('Buenos Aires cultural', 'Argentina', 5, 920.00, 10, 'reservado'),
    ('Rio de Janeiro', 'Brasil', 7, 1100.00, 6, 'disponible'),
    ('Madrid gastronomica', 'Espana', 8, 1450.00, 4, 'disponible'),
    ('Paris romantica', 'Francia', 7, 1800.00, 0, 'cerrado'),
    ('Cancun playa', 'Mexico', 5, 1250.00, 9, 'reservado'),
    ('Santiago aventura', 'Chile', 6, 990.00, 7, 'disponible');
