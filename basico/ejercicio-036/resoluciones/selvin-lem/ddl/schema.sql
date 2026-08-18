-- Ejercicio 036: WHERE para autos hiperdeportivos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS autos_hiperdeportivos_036;
CREATE TABLE autos_hiperdeportivos_036 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(80) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    pais VARCHAR(60) NOT NULL,
    potencia_hp INT NOT NULL,
    precio DECIMAL(12, 2) NOT NULL,
    estado ENUM('disponible', 'reservado', 'vendido') NOT NULL DEFAULT 'disponible',
    CONSTRAINT chk_selvin_036_potencia CHECK (potencia_hp > 0),
    CONSTRAINT chk_selvin_036_precio CHECK (precio >= 0)
);
