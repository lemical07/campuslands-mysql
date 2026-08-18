-- Ejercicio 034: INSERT para garaje de motos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS motos_garaje_034;

CREATE TABLE motos_garaje_034 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(80) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    cilindrada INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    color VARCHAR(40) NOT NULL,
    estado ENUM('disponible', 'reservada', 'vendida') NOT NULL DEFAULT 'disponible',
    fecha_ingreso DATE NOT NULL,
    CONSTRAINT chk_selvin_034_cilindrada CHECK (cilindrada BETWEEN 50 AND 2500),
    CONSTRAINT chk_selvin_034_precio CHECK (precio >= 0)
);
