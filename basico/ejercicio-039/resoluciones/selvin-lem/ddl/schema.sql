-- Ejercicio 039: DELETE controlado para kickboxing

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS peleadores_kickboxing_039;
CREATE TABLE peleadores_kickboxing_039 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    edad INT NOT NULL,
    peso_kg DECIMAL(5, 2) NOT NULL,
    victorias INT NOT NULL DEFAULT 0,
    estado ENUM('activo', 'preparacion', 'archivado') NOT NULL DEFAULT 'preparacion',
    CONSTRAINT chk_selvin_039_edad CHECK (edad BETWEEN 18 AND 60),
    CONSTRAINT chk_selvin_039_peso CHECK (peso_kg > 0),
    CONSTRAINT chk_selvin_039_victorias CHECK (victorias >= 0)
);
