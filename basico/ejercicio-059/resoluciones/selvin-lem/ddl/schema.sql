-- Ejercicio 059: fechas basicas para marketplace de accesorios

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS productos_marketplace_059;
CREATE TABLE productos_marketplace_059 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    categoria VARCHAR(70) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL,
    descuento DECIMAL(5, 2) NOT NULL DEFAULT 0,
    fecha_publicacion DATE NOT NULL,
    fecha_actualizacion DATE NOT NULL,
    fecha_fin_promocion DATE NULL,
    estado ENUM('disponible', 'agotado', 'pausado') NOT NULL,
    CONSTRAINT chk_selvin_059_precio CHECK (precio >= 0),
    CONSTRAINT chk_selvin_059_descuento CHECK (descuento BETWEEN 0 AND 100),
    CONSTRAINT chk_selvin_059_fechas CHECK (fecha_actualizacion >= fecha_publicacion)
);
