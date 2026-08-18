-- Ejercicio 041: validaciones simples para pingpong

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS jugadores_pingpong_041;
CREATE TABLE jugadores_pingpong_041 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    ranking INT NOT NULL,
    victorias INT NOT NULL DEFAULT 0,
    derrotas INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'lesionado', 'retirado') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_selvin_041_edad CHECK (edad BETWEEN 10 AND 80),
    CONSTRAINT chk_selvin_041_ranking CHECK (ranking BETWEEN 1 AND 10000),
    CONSTRAINT chk_selvin_041_partidas CHECK (victorias >= 0 AND derrotas >= 0)
);
