-- Ejercicio 048: PRIMARY KEY para viajes y turismo

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS paquetes_viaje_048;
CREATE TABLE paquetes_viaje_048 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(120) NOT NULL UNIQUE,
    pais VARCHAR(80) NOT NULL,
    dias INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    cupos INT NOT NULL,
    estado ENUM('disponible', 'reservado', 'cerrado') NOT NULL DEFAULT 'disponible',
    CONSTRAINT chk_selvin_048_dias CHECK (dias > 0),
    CONSTRAINT chk_selvin_048_precio CHECK (precio >= 0),
    CONSTRAINT chk_selvin_048_cupos CHECK (cupos >= 0)
);
