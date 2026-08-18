-- Ejercicio 052: ORDER BY para animacion 3D

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS escenas_animacion_052;
CREATE TABLE escenas_animacion_052 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    categoria VARCHAR(70) NOT NULL,
    puntaje DECIMAL(5, 2) NOT NULL,
    duracion_segundos DECIMAL(6, 2) NOT NULL,
    fecha_creacion DATE NOT NULL,
    estado ENUM('activa', 'revision', 'archivada') NOT NULL,
    CONSTRAINT chk_selvin_052_puntaje CHECK (puntaje BETWEEN 0 AND 100),
    CONSTRAINT chk_selvin_052_duracion CHECK (duracion_segundos > 0)
);
