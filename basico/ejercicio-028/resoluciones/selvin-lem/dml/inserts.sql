-- Ejercicio 028: datos de cursos para academia tech

USE campuslands_mysql;

INSERT INTO cursos_academia_028
    (nombre, categoria, nivel, duracion_horas, cupos_disponibles, estado)
VALUES
    ('Fundamentos de Python', 'programacion', 'inicial', 40, 18, 'activo'),
    ('Bases de datos MySQL', 'datos', 'inicial', 32, 12, 'activo'),
    ('Desarrollo web frontend', 'web', 'intermedio', 56, 0, 'cerrado'),
    ('APIs con Node.js', 'web', 'intermedio', 48, 9, 'activo'),
    ('Analisis de datos', 'datos', 'intermedio', 64, 15, 'revision'),
    ('Arquitectura de software', 'ingenieria', 'avanzado', 36, 6, 'activo'),
    ('Seguridad de aplicaciones', 'seguridad', 'avanzado', 44, 0, 'cerrado'),
    ('Introduccion a Git', 'herramientas', 'inicial', 16, 25, 'activo'),
    ('Contenedores y despliegue', 'devops', 'avanzado', 52, 8, 'revision'),
    ('Pruebas automatizadas', 'calidad', 'intermedio', 28, 11, 'activo');
