-- Ejercicio 022: datos de escenas de animacion 3D

USE campuslands_mysql;

INSERT INTO escenas_animacion_022
    (nombre, categoria, puntaje, duracion_segundos, estado, fecha_creacion)
VALUES
    ('Ciudad futurista', 'entorno', 92.50, 18.40, 'activo', '2026-08-01'),
    ('Robot explorador', 'personaje', 84.00, 12.75, 'revision', '2026-08-03'),
    ('Bosque encantado', 'entorno', 96.25, 25.00, 'activo', '2026-08-05'),
    ('Nave espacial', 'vehiculo', 78.50, 9.60, 'revision', '2026-08-07'),
    ('Criatura marina', 'personaje', 88.75, 21.30, 'activo', '2026-08-09'),
    ('Templo antiguo', 'arquitectura', 73.00, 15.50, 'inactivo', '2026-08-11'),
    ('Dron de rescate', 'vehiculo', 81.25, 7.80, 'activo', '2026-08-13'),
    ('Portal dimensional', 'efecto', 90.00, 11.25, 'revision', '2026-08-15'),
    ('Aldea nevada', 'entorno', 86.50, 28.75, 'activo', '2026-08-17'),
    ('Guardian de piedra', 'personaje', 69.75, 19.90, 'inactivo', '2026-08-19');
