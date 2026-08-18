-- Ejercicio 030: relaciones simples para equipo de streaming

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS configuraciones_streaming_030;
DROP TABLE IF EXISTS dispositivos_streaming_030;
DROP TABLE IF EXISTS creadores_streaming_030;

CREATE TABLE creadores_streaming_030 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    canal VARCHAR(100) NOT NULL UNIQUE,
    plataforma ENUM('video', 'directo', 'podcast') NOT NULL,
    estado ENUM('activo', 'pausado') NOT NULL DEFAULT 'activo'
);

CREATE TABLE dispositivos_streaming_030 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo ENUM('camara', 'microfono', 'iluminacion', 'captura') NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    estado ENUM('disponible', 'mantenimiento') NOT NULL DEFAULT 'disponible',
    CONSTRAINT chk_selvin_030_precio CHECK (precio >= 0)
);

CREATE TABLE configuraciones_streaming_030 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    creador_id INT NOT NULL,
    dispositivo_id INT NOT NULL,
    calidad ENUM('720p', '1080p', '4k') NOT NULL,
    fecha_configuracion DATE NOT NULL,
    CONSTRAINT fk_selvin_030_creador FOREIGN KEY (creador_id) REFERENCES creadores_streaming_030(id),
    CONSTRAINT fk_selvin_030_dispositivo FOREIGN KEY (dispositivo_id) REFERENCES dispositivos_streaming_030(id)
);
