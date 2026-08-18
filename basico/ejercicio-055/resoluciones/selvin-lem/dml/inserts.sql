-- Ejercicio 055: datos de formulas quimicas

USE campuslands_mysql;
INSERT INTO experimentos_quimicos_055
    (nombre, categoria, gramos_material, duracion_minutos, estado)
VALUES
    ('Solucion conductora','electroquimica',125.50,90,'aprobado'),
    ('Polimero flexible','polimeros',240.00,150,'prueba'),
    ('Catalizador verde','catalizadores',85.75,120,'aprobado'),
    ('Pigmento mineral','pigmentos',310.25,60,'pendiente'),
    ('Gel protector','polimeros',175.00,180,'prueba'),
    ('Reactivo acido','electroquimica',95.50,45,'descartado'),
    ('Mezcla organica','organica',420.00,240,'aprobado'),
    ('Base neutralizante','organica',210.75,75,'pendiente');
