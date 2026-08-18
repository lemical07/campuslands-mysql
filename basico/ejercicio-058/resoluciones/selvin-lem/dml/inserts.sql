-- Ejercicio 058: datos de cursos

USE campuslands_mysql;
INSERT INTO cursos_academia_058
    (nombre, categoria, nivel, duracion_horas, cupos, estado)
VALUES
    ('Python inicial','programacion','inicial',40,18,'activo'),
    ('MySQL practico','datos','inicial',32,12,'activo'),
    ('Frontend moderno','web','intermedio',56,0,'cerrado'),
    ('APIs con Node','web','intermedio',48,9,'activo'),
    ('Analisis de datos','datos','intermedio',64,15,'revision'),
    ('Arquitectura software','ingenieria','avanzado',36,6,'activo'),
    ('Seguridad web','seguridad','avanzado',44,0,'cerrado'),
    ('Introduccion a Git','herramientas','inicial',16,25,'activo');
