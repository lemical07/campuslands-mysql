-- Ejercicio 022: ORDER BY en animacion 3D

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS escenas_animacion_022;

CREATE TABLE escenas_animacion_022 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    puntaje DECIMAL(10, 2) NOT NULL DEFAULT 0,
    duracion_segundos DECIMAL(6, 2) NOT NULL,
    estado ENUM('activo', 'revision', 'inactivo') NOT NULL DEFAULT 'revision',
    fecha_creacion DATE NOT NULL,
    CONSTRAINT chk_selvin_022_puntaje CHECK (puntaje BETWEEN 0 AND 100),
    CONSTRAINT chk_selvin_022_duracion CHECK (duracion_segundos BETWEEN 0.01 AND 60.00)
);
