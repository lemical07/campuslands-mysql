-- Ejercicio 042: datos de playlist musical

USE campuslands_mysql;
INSERT INTO artistas_musica_042 (nombre, genero) VALUES
('Aurora Norte','pop'),('Ritmo Solar','rock'),('Luna Azul','electronica'),('Voces del Sur','indie');
INSERT INTO playlists_musica_042 (nombre, tipo) VALUES
('Manana Activa','publica'),('Noche tranquila','privada'),('Viaje largo','publica');
INSERT INTO canciones_musica_042 (titulo, artista_id, duracion_segundos) VALUES
('Primer rayo',1,210),('Horizonte',1,240),('Ciudad viva',2,198),('Ruta abierta',2,265),
('Pulso digital',3,320),('Luz de luna',3,280),('Camino lento',4,230),('Viento sur',4,245);
INSERT INTO canciones_playlist_042 (playlist_id, cancion_id, posicion) VALUES
(1,1,1),(1,3,2),(1,5,3),(1,7,4),(2,2,1),(2,6,2),(2,8,3),(3,4,1),(3,5,2),(3,7,3);
