-- Ejercicio 023: UPDATE en arquitectura 3D

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS proyectos_arquitectura_023;

CREATE TABLE proyectos_arquitectura_023 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo VARCHAR(80) NOT NULL,
    presupuesto DECIMAL(12, 2) NOT NULL,
    pisos INT NOT NULL,
    estado ENUM('diseno', 'revision', 'aprobado', 'pausado') NOT NULL DEFAULT 'diseno',
    fecha_entrega DATE NOT NULL,
    CONSTRAINT chk_selvin_023_presupuesto CHECK (presupuesto >= 0),
    CONSTRAINT chk_selvin_023_pisos CHECK (pisos BETWEEN 1 AND 100)
);
