-- Ejercicio 047: tipos de datos para tienda de ropa

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS prendas_tienda_047;
CREATE TABLE prendas_tienda_047 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    categoria ENUM('camisa', 'pantalon', 'chaqueta', 'calzado', 'accesorio') NOT NULL,
    talla ENUM('XS', 'S', 'M', 'L', 'XL') NOT NULL,
    color VARCHAR(40) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL,
    stock INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('disponible', 'agotado', 'oferta') NOT NULL,
    CONSTRAINT chk_selvin_047_precio CHECK (precio > 0),
    CONSTRAINT chk_selvin_047_stock CHECK (stock >= 0)
);
