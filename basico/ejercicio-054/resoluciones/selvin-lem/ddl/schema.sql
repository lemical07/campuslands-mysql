-- Ejercicio 054: DELETE controlado para soldadura

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS trabajos_soldadura_054;
CREATE TABLE trabajos_soldadura_054 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100) NOT NULL,
    tipo_soldadura VARCHAR(70) NOT NULL,
    piezas INT NOT NULL,
    costo DECIMAL(10, 2) NOT NULL,
    estado ENUM('recibido', 'en_proceso', 'terminado', 'cancelado') NOT NULL,
    fecha_registro DATE NOT NULL,
    CONSTRAINT chk_selvin_054_piezas CHECK (piezas > 0),
    CONSTRAINT chk_selvin_054_costo CHECK (costo >= 0)
);
