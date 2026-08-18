-- Ejercicio 055: COUNT y SUM para formulas quimicas

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS experimentos_quimicos_055;
CREATE TABLE experimentos_quimicos_055 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(70) NOT NULL,
    gramos_material DECIMAL(8, 2) NOT NULL,
    duracion_minutos INT NOT NULL,
    estado ENUM('pendiente', 'prueba', 'aprobado', 'descartado') NOT NULL,
    CONSTRAINT chk_selvin_055_gramos CHECK (gramos_material > 0),
    CONSTRAINT chk_selvin_055_duracion CHECK (duracion_minutos > 0)
);
