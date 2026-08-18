-- Ejercicio 029: fechas basicas para marketplace de accesorios

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS productos_marketplace_029;

CREATE TABLE productos_marketplace_029 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descuento DECIMAL(5, 2) NOT NULL DEFAULT 0,
    fecha_publicacion DATE NOT NULL,
    fecha_actualizacion DATE NOT NULL,
    fecha_fin_promocion DATE NULL,
    estado ENUM('disponible', 'agotado', 'pausado') NOT NULL DEFAULT 'disponible',
    CONSTRAINT chk_selvin_029_precio CHECK (precio >= 0),
    CONSTRAINT chk_selvin_029_descuento CHECK (descuento BETWEEN 0 AND 100),
    CONSTRAINT chk_selvin_029_fechas CHECK (fecha_actualizacion >= fecha_publicacion)
);
