-- Ejercicio 042: modelado de entidad para playlist musical

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS canciones_playlist_042;
DROP TABLE IF EXISTS canciones_musica_042;
DROP TABLE IF EXISTS playlists_musica_042;
DROP TABLE IF EXISTS artistas_musica_042;
CREATE TABLE artistas_musica_042 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    genero VARCHAR(60) NOT NULL
);
CREATE TABLE playlists_musica_042 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    tipo ENUM('publica', 'privada') NOT NULL DEFAULT 'publica'
);
CREATE TABLE canciones_musica_042 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    artista_id INT NOT NULL,
    duracion_segundos INT NOT NULL,
    CONSTRAINT chk_selvin_042_duracion CHECK (duracion_segundos > 0),
    CONSTRAINT fk_selvin_042_artista FOREIGN KEY (artista_id) REFERENCES artistas_musica_042(id)
);
CREATE TABLE canciones_playlist_042 (
    playlist_id INT NOT NULL,
    cancion_id INT NOT NULL,
    posicion INT NOT NULL,
    PRIMARY KEY (playlist_id, cancion_id),
    CONSTRAINT chk_selvin_042_posicion CHECK (posicion > 0),
    CONSTRAINT fk_selvin_042_playlist FOREIGN KEY (playlist_id) REFERENCES playlists_musica_042(id),
    CONSTRAINT fk_selvin_042_cancion FOREIGN KEY (cancion_id) REFERENCES canciones_musica_042(id)
);
