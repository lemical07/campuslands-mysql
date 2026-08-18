-- Ejercicio 051: WHERE para dibujo digital

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS proyectos_dibujo_051;
CREATE TABLE proyectos_dibujo_051 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    categoria VARCHAR(70) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    horas INT NOT NULL,
    estado ENUM('borrador', 'revision', 'aprobado') NOT NULL,
    fecha_entrega DATE NOT NULL,
    CONSTRAINT chk_selvin_051_precio CHECK (precio >= 0),
    CONSTRAINT chk_selvin_051_horas CHECK (horas > 0)
);
