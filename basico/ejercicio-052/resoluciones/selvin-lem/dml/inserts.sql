-- Ejercicio 052: datos de escenas 3D

USE campuslands_mysql;
INSERT INTO escenas_animacion_052
    (nombre, categoria, puntaje, duracion_segundos, fecha_creacion, estado)
VALUES
    ('Ciudad futurista','entorno',92.50,18.40,'2026-08-01','activa'),
    ('Robot explorador','personaje',84.00,12.75,'2026-08-03','revision'),
    ('Bosque encantado','entorno',96.25,25.00,'2026-08-05','activa'),
    ('Nave espacial','vehiculo',78.50,9.60,'2026-08-07','revision'),
    ('Criatura marina','personaje',88.75,21.30,'2026-08-09','activa'),
    ('Templo antiguo','arquitectura',73.00,15.50,'2026-08-11','archivada'),
    ('Dron de rescate','vehiculo',81.25,7.80,'2026-08-13','activa'),
    ('Portal dimensional','efecto',90.00,11.25,'2026-08-15','revision');
