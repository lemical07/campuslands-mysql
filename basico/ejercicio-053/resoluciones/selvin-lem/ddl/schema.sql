-- Ejercicio 053: UPDATE para arquitectura 3D

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS proyectos_arquitectura_053;
CREATE TABLE proyectos_arquitectura_053 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo VARCHAR(70) NOT NULL,
    presupuesto DECIMAL(12, 2) NOT NULL,
    pisos INT NOT NULL,
    estado ENUM('diseno', 'revision', 'aprobado', 'pausado') NOT NULL,
    fecha_entrega DATE NOT NULL,
    CONSTRAINT chk_selvin_053_presupuesto CHECK (presupuesto >= 0),
    CONSTRAINT chk_selvin_053_pisos CHECK (pisos > 0)
);
