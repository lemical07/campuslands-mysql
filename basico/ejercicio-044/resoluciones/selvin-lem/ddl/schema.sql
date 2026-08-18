-- Ejercicio 044: fechas basicas para saga de ciencia ficcion

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS producciones_ciencia_044;
CREATE TABLE producciones_ciencia_044 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    tipo ENUM('pelicula', 'serie', 'mision') NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_final DATE NOT NULL,
    presupuesto DECIMAL(12, 2) NOT NULL,
    estado ENUM('planificada', 'activa', 'finalizada') NOT NULL,
    CONSTRAINT chk_selvin_044_fechas CHECK (fecha_final >= fecha_inicio),
    CONSTRAINT chk_selvin_044_presupuesto CHECK (presupuesto >= 0)
);
