-- Ejercicio 060: datos del equipo de streaming

USE campuslands_mysql;
INSERT INTO creadores_streaming_060 (nombre, canal, plataforma, estado) VALUES
('Alma Ruiz','AlmaEnVivo','directo','activo'),('Bruno Leon','BrunoTech','video','activo'),
('Celia Mora','CeliaPodcast','podcast','activo'),('Dario Vega','DarioJuega','directo','pausado'),
('Elena Cruz','ElenaCrea','video','activo'),('Fabian Soto','FabianLive','directo','activo');
INSERT INTO dispositivos_streaming_060 (nombre,tipo,precio,estado) VALUES
('Camara Stream Pro','camara',680.00,'disponible'),('Microfono Condensador','microfono',245.00,'disponible'),
('Panel LED','iluminacion',120.00,'mantenimiento'),('Capturadora Ultra HD','captura',310.00,'disponible'),
('Camara Compacta 4K','camara',520.00,'disponible'),('Microfono Podcast','microfono',180.00,'disponible');
INSERT INTO configuraciones_streaming_060 (creador_id,dispositivo_id,calidad,fecha_configuracion) VALUES
(1,1,'4k','2026-08-01'),(1,2,'4k','2026-08-01'),(2,5,'1080p','2026-08-03'),
(2,4,'1080p','2026-08-03'),(3,6,'1080p','2026-08-05'),(4,3,'720p','2026-08-07'),
(5,1,'4k','2026-08-09'),(6,2,'1080p','2026-08-11');
