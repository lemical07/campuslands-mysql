-- Ejercicio 054: datos de trabajos de soldadura

USE campuslands_mysql;
INSERT INTO trabajos_soldadura_054
    (cliente, tipo_soldadura, piezas, costo, estado, fecha_registro)
VALUES
    ('Metalicas Norte','MIG',24,1850.00,'en_proceso','2026-08-01'),
    ('Taller Rivera','TIG',8,620.00,'recibido','2026-08-02'),
    ('Industria Sol','electrodo',16,940.00,'terminado','2026-08-03'),
    ('Construcciones Alfa','MIG',12,780.00,'en_proceso','2026-08-04'),
    ('Tanques Delta','TIG',32,2400.00,'recibido','2026-08-05'),
    ('Obras Luna','electrodo',10,510.00,'cancelado','2026-08-06'),
    ('Transportes Uno','MIG',20,1320.00,'terminado','2026-08-07'),
    ('Ventilacion Plus','electrodo',14,430.00,'cancelado','2026-08-08');
