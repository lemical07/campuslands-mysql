-- Ejercicio 046: CREATE TABLE para restaurante de comida urbana

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS menu_urbano_046;
CREATE TABLE menu_urbano_046 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    categoria ENUM('hamburguesa', 'pizza', 'bebida', 'postre', 'acompanamiento') NOT NULL,
    precio DECIMAL(8, 2) NOT NULL,
    ventas_estimadas INT NOT NULL DEFAULT 0,
    disponible BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT chk_selvin_046_precio CHECK (precio > 0),
    CONSTRAINT chk_selvin_046_ventas CHECK (ventas_estimadas >= 0)
);
