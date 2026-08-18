-- Ejercicio 037: datos de la liga de futbol

USE campuslands_mysql;
INSERT INTO clasificacion_futbol_037
    (equipo, ciudad, partidos, puntos, goles_favor, goles_contra, estado)
VALUES
    ('Aurora FC', 'Bogota', 10, 24, 22, 8, 'activo'),
    ('Real Norte', 'Medellin', 10, 21, 19, 10, 'activo'),
    ('Estrella Sur', 'Cali', 10, 19, 18, 12, 'activo'),
    ('Union Central', 'Pereira', 10, 17, 15, 13, 'activo'),
    ('Deportivo Mar', 'Cartagena', 10, 15, 14, 15, 'activo'),
    ('Montana FC', 'Manizales', 10, 13, 12, 16, 'activo'),
    ('Llaneros', 'Villavicencio', 10, 10, 10, 18, 'activo'),
    ('Costa Azul', 'Santa Marta', 10, 7, 8, 22, 'retirado');
