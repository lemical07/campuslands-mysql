-- Ejercicio 024: DELETE controlado en soldadura

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS trabajos_soldadura_024;

CREATE TABLE trabajos_soldadura_024 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    tipo_soldadura VARCHAR(80) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    piezas INT NOT NULL,
    estado ENUM('activo', 'revision', 'finalizado', 'archivado') NOT NULL DEFAULT 'revision',
    fecha_registro DATE NOT NULL,
    CONSTRAINT chk_selvin_024_costo CHECK (costo >= 0),
    CONSTRAINT chk_selvin_024_piezas CHECK (piezas BETWEEN 1 AND 1000)
);
