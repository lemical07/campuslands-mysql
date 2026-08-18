-- Ejercicio 032: datos del ranking battle royale

USE campuslands_mysql;

INSERT INTO ranking_battle_royale_032
    (jugador, escuadron, posicion, eliminaciones, puntuacion, fecha_partida, estado)
VALUES
    ('Ares', 'Tormenta', 1, 12, 985.50, '2026-08-01', 'clasificado'),
    ('Bia', 'Lobos', 2, 10, 920.00, '2026-08-01', 'clasificado'),
    ('Ciro', 'Tormenta', 4, 8, 810.75, '2026-08-02', 'clasificado'),
    ('Dalia', 'Halcones', 7, 6, 730.25, '2026-08-02', 'pendiente'),
    ('Eros', 'Lobos', 3, 9, 875.00, '2026-08-03', 'clasificado'),
    ('Fara', 'Centellas', 12, 4, 590.50, '2026-08-03', 'pendiente'),
    ('Galo', 'Halcones', 5, 7, 780.00, '2026-08-04', 'clasificado'),
    ('Hera', 'Centellas', 15, 3, 480.25, '2026-08-04', 'pendiente'),
    ('Ivo', 'Tormenta', 9, 5, 650.00, '2026-08-05', 'descalificado'),
    ('Juno', 'Lobos', 6, 8, 755.75, '2026-08-05', 'clasificado');
