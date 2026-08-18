-- Ejercicio 033: PRIMARY KEY para inventario de skins shooter

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS inventario_skins_033;

CREATE TABLE inventario_skins_033 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    arma VARCHAR(80) NOT NULL,
    rareza ENUM('comun', 'rara', 'epica', 'legendaria') NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    desgaste DECIMAL(5, 2) NOT NULL,
    estado ENUM('disponible', 'equipada', 'vendida') NOT NULL DEFAULT 'disponible',
    CONSTRAINT chk_selvin_033_precio CHECK (precio >= 0),
    CONSTRAINT chk_selvin_033_desgaste CHECK (desgaste BETWEEN 0 AND 100)
);
