-- Ejercicio 025: COUNT y SUM en formulas quimicas

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS formulas_quimicas_025;

CREATE TABLE formulas_quimicas_025 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    gramos_material DECIMAL(10, 2) NOT NULL,
    duracion_minutos INT NOT NULL,
    estado ENUM('pendiente', 'en_prueba', 'aprobada', 'descartada') NOT NULL DEFAULT 'pendiente',
    fecha_experimento DATE NOT NULL,
    CONSTRAINT chk_selvin_025_gramos CHECK (gramos_material > 0),
    CONSTRAINT chk_selvin_025_duracion CHECK (duracion_minutos BETWEEN 1 AND 1440)
);
