-- Ejercicio 059: datos del marketplace

USE campuslands_mysql;
INSERT INTO productos_marketplace_059
    (nombre,categoria,precio,descuento,fecha_publicacion,fecha_actualizacion,fecha_fin_promocion,estado)
VALUES
('Auriculares inalambricos','audio',89.90,15.00,'2026-07-01','2026-08-02','2026-08-31','disponible'),
('Soporte para laptop','oficina',34.50,10.00,'2026-07-05','2026-07-28','2026-08-20','disponible'),
('Teclado mecanico','computacion',120.00,20.00,'2026-06-18','2026-08-01','2026-08-25','disponible'),
('Funda para tablet','proteccion',22.75,5.00,'2026-07-12','2026-07-30',NULL,'disponible'),
('Cable USB C','conectividad',12.00,0.00,'2026-05-20','2026-06-15',NULL,'agotado'),
('Camara web HD','video',65.00,25.00,'2026-06-25','2026-08-05','2026-09-01','disponible'),
('Mouse ergonomico','computacion',42.80,12.00,'2026-07-20','2026-08-06','2026-08-30','disponible'),
('Lampara LED','oficina',28.90,8.00,'2026-05-10','2026-07-10',NULL,'pausado');
