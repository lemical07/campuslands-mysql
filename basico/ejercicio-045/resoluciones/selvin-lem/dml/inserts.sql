-- Ejercicio 045: datos de biblioteca gamer

USE campuslands_mysql;
INSERT INTO usuarios_gamer_045 (nombre, nivel) VALUES
('Ana Torres','avanzado'),('Bruno Leon','intermedio'),('Celia Mora','basico'),('Dario Vega','avanzado'),
('Elena Cruz','intermedio'),('Fabian Soto','basico');
INSERT INTO juegos_gamer_045 (titulo, genero, copias) VALUES
('Reinos perdidos','aventura',3),('Circuito extremo','carreras',2),('Batalla galactica','estrategia',4),
('Misterio oscuro','terror',1),('Liga champions','deportes',5),('Isla supervivencia','aventura',2),
('Defensa orbital','estrategia',3),('Ciudad pixel','simulacion',2);
INSERT INTO prestamos_gamer_045 (usuario_id,juego_id,fecha_prestamo,fecha_devolucion,estado) VALUES
(1,1,'2026-08-01','2026-08-05','devuelto'),(2,2,'2026-08-02',NULL,'activo'),
(3,3,'2026-08-03','2026-08-08','devuelto'),(4,4,'2026-08-04',NULL,'activo'),
(5,5,'2026-08-05','2026-08-10','devuelto'),(6,6,'2026-08-06',NULL,'activo'),
(1,7,'2026-08-07','2026-08-12','devuelto'),(2,8,'2026-08-08',NULL,'activo');
