-- Ejercicio 042: consultas del modelo musical

USE campuslands_mysql;

-- 1. Mostrar canciones con su artista.
SELECT c.titulo AS cancion, a.nombre AS artista, a.genero, c.duracion_segundos
FROM canciones_musica_042 AS c
JOIN artistas_musica_042 AS a ON a.id = c.artista_id
ORDER BY a.nombre, c.titulo;

-- 2. Mostrar el contenido de cada playlist.
SELECT p.nombre AS playlist, c.titulo AS cancion, cp.posicion
FROM canciones_playlist_042 AS cp
JOIN playlists_musica_042 AS p ON p.id = cp.playlist_id
JOIN canciones_musica_042 AS c ON c.id = cp.cancion_id
ORDER BY p.nombre, cp.posicion;

-- 3. Calcular la duracion total por playlist.
SELECT p.nombre AS playlist,
       SUM(c.duracion_segundos) AS duracion_total_segundos
FROM canciones_playlist_042 AS cp
JOIN playlists_musica_042 AS p ON p.id = cp.playlist_id
JOIN canciones_musica_042 AS c ON c.id = cp.cancion_id
GROUP BY p.id, p.nombre
ORDER BY duracion_total_segundos DESC;

-- 4. Contar canciones por genero.
SELECT a.genero, COUNT(c.id) AS total_canciones
FROM artistas_musica_042 AS a
JOIN canciones_musica_042 AS c ON c.artista_id = a.id
GROUP BY a.genero
ORDER BY total_canciones DESC;

-- 5. Consultar playlists publicas.
SELECT nombre, tipo
FROM playlists_musica_042
WHERE tipo = 'publica'
ORDER BY nombre;
