-- Ejercicio 043: datos del catalogo de peliculas de miedo

USE campuslands_mysql;
INSERT INTO peliculas_miedo_043
    (titulo, subgenero, duracion_minutos, calificacion, estado)
VALUES
    ('La casa vacia', 'paranormal', 108, 8.2, 'disponible'),
    ('Noche de sombras', 'slasher', 96, 7.4, 'disponible'),
    ('El sotano', 'psicologico', 115, 8.8, 'produccion'),
    ('Bosque sin salida', 'supervivencia', 102, 7.9, 'disponible'),
    ('La marca oscura', 'paranormal', 124, 9.1, 'produccion'),
    ('Visitante nocturno', 'extraterrestre', 98, 6.8, 'archivada'),
    ('Ultimo ritual', 'religioso', 110, 8.5, 'disponible'),
    ('Habitacion 13', 'psicologico', 90, 7.2, 'archivada'),
    ('El lago negro', 'criaturas', 118, 8.0, 'produccion'),
    ('Silencio final', 'slasher', 104, 7.7, 'disponible');
