-- Ejercicio 026: datos de personajes RPG

USE campuslands_mysql;

INSERT INTO personajes_rpg_026
    (nombre, clase, nivel, puntos_vida, puntos_mana, estado)
VALUES
    ('Ardan', 'guerrero', 42, 6800, 900, 'activo'),
    ('Lyra', 'mago', 35, 2900, 4200, 'activo'),
    ('Kael', 'arquero', 28, 4100, 1600, 'activo'),
    ('Mira', 'curandero', 31, 3600, 3900, 'pausa'),
    ('Borin', 'guerrero', 18, 3300, 450, 'activo'),
    ('Selene', 'mago', 56, 5200, 4800, 'activo'),
    ('Tarek', 'arquero', 12, 1800, 700, 'retirado'),
    ('Nara', 'curandero', 24, 2500, 3100, 'activo'),
    ('Oren', 'guerrero', 67, 8400, 1200, 'activo'),
    ('Vela', 'mago', 9, 950, 1800, 'pausa');
