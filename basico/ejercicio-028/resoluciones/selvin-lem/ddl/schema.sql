-- Ejercicio 028: filtros por estado para academia tech

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS cursos_academia_028;

CREATE TABLE cursos_academia_028 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    nivel ENUM('inicial', 'intermedio', 'avanzado') NOT NULL,
    duracion_horas INT NOT NULL,
    cupos_disponibles INT NOT NULL,
    estado ENUM('activo', 'revision', 'cerrado') NOT NULL DEFAULT 'revision',
    CONSTRAINT chk_selvin_028_duracion CHECK (duracion_horas BETWEEN 1 AND 500),
    CONSTRAINT chk_selvin_028_cupos CHECK (cupos_disponibles BETWEEN 0 AND 500)
);
