-- Ejercicio 032: tipos de datos para ranking battle royale

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS ranking_battle_royale_032;

CREATE TABLE ranking_battle_royale_032 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador VARCHAR(100) NOT NULL,
    escuadron VARCHAR(80) NOT NULL,
    posicion INT NOT NULL,
    eliminaciones INT NOT NULL DEFAULT 0,
    puntuacion DECIMAL(10, 2) NOT NULL,
    fecha_partida DATE NOT NULL,
    estado ENUM('clasificado', 'pendiente', 'descalificado') NOT NULL DEFAULT 'pendiente',
    CONSTRAINT chk_selvin_032_posicion CHECK (posicion BETWEEN 1 AND 100),
    CONSTRAINT chk_selvin_032_eliminaciones CHECK (eliminaciones >= 0),
    CONSTRAINT chk_selvin_032_puntuacion CHECK (puntuacion >= 0)
);
