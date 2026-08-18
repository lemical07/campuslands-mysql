-- Ejercicio 040: COUNT y SUM para carreras urbanas

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS participantes_carreras_040;
CREATE TABLE participantes_carreras_040 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(80) NOT NULL,
    categoria ENUM('juvenil', 'amateur', 'profesional') NOT NULL,
    distancia_km DECIMAL(5, 2) NOT NULL,
    cuota DECIMAL(8, 2) NOT NULL,
    pago ENUM('pagado', 'pendiente') NOT NULL DEFAULT 'pendiente',
    CONSTRAINT chk_selvin_040_distancia CHECK (distancia_km > 0),
    CONSTRAINT chk_selvin_040_cuota CHECK (cuota >= 0)
);
