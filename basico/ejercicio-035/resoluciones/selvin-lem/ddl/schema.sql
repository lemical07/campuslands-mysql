-- Ejercicio 035: SELECT para taller mecanico de motos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS servicios_taller_035;
CREATE TABLE servicios_taller_035 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100) NOT NULL,
    motocicleta VARCHAR(100) NOT NULL,
    servicio VARCHAR(120) NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    horas_estimadas INT NOT NULL,
    estado ENUM('recibida', 'en_proceso', 'terminada', 'entregada') NOT NULL DEFAULT 'recibida',
    fecha_ingreso DATE NOT NULL,
    CONSTRAINT chk_selvin_035_costo CHECK (costo >= 0),
    CONSTRAINT chk_selvin_035_horas CHECK (horas_estimadas BETWEEN 1 AND 200)
);
