-- Ejercicio 030: datos de equipos de streaming

USE campuslands_mysql;

INSERT INTO creadores_streaming_030 (nombre, canal, plataforma, estado) VALUES
('Alma Ruiz', 'AlmaEnVivo', 'directo', 'activo'),
('Bruno Leon', 'BrunoTech', 'video', 'activo'),
('Celia Mora', 'CeliaPodcast', 'podcast', 'activo'),
('Dario Vega', 'DarioJuega', 'directo', 'pausado'),
('Elena Cruz', 'ElenaCrea', 'video', 'activo'),
('Fabian Soto', 'FabianLive', 'directo', 'activo'),
('Gina Torres', 'GinaHabla', 'podcast', 'activo'),
('Hugo Diaz', 'HugoDigital', 'video', 'pausado');

INSERT INTO dispositivos_streaming_030 (nombre, tipo, precio, estado) VALUES
('Camara Stream Pro', 'camara', 680.00, 'disponible'),
('Microfono Condensador X', 'microfono', 245.00, 'disponible'),
('Panel LED Blanco', 'iluminacion', 120.00, 'mantenimiento'),
('Capturadora Ultra HD', 'captura', 310.00, 'disponible'),
('Camara Compacta 4K', 'camara', 520.00, 'disponible'),
('Microfono Podcast Plus', 'microfono', 180.00, 'disponible'),
('Aro de Luz Pro', 'iluminacion', 95.00, 'disponible'),
('Capturadora Basica', 'captura', 155.00, 'disponible');

INSERT INTO configuraciones_streaming_030
    (creador_id, dispositivo_id, calidad, fecha_configuracion)
VALUES
(1, 1, '4k', '2026-08-01'), (1, 2, '4k', '2026-08-01'),
(2, 5, '1080p', '2026-08-03'), (2, 4, '1080p', '2026-08-03'),
(3, 6, '1080p', '2026-08-05'), (4, 7, '720p', '2026-08-07'),
(5, 3, '1080p', '2026-08-09'), (6, 8, '1080p', '2026-08-11'),
(7, 6, '1080p', '2026-08-13'), (8, 5, '4k', '2026-08-15');
