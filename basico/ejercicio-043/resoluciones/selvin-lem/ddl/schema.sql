-- Ejercicio 043: filtros por estado para peliculas de miedo

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS peliculas_miedo_043;
CREATE TABLE peliculas_miedo_043 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    subgenero VARCHAR(80) NOT NULL,
    duracion_minutos INT NOT NULL,
    calificacion DECIMAL(3, 1) NOT NULL,
    estado ENUM('disponible', 'produccion', 'archivada') NOT NULL DEFAULT 'produccion',
    CONSTRAINT chk_selvin_043_duracion CHECK (duracion_minutos > 0),
    CONSTRAINT chk_selvin_043_calificacion CHECK (calificacion BETWEEN 0 AND 10)
);
