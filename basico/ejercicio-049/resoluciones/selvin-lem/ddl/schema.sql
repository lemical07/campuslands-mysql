-- Ejercicio 049: INSERT para paracaidismo

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS saltos_paracaidismo_049;
CREATE TABLE saltos_paracaidismo_049 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    participante VARCHAR(100) NOT NULL,
    zona VARCHAR(80) NOT NULL,
    altura_metros INT NOT NULL,
    experiencia_saltos INT NOT NULL,
    costo DECIMAL(8, 2) NOT NULL,
    estado ENUM('programado', 'realizado', 'cancelado') NOT NULL DEFAULT 'programado',
    fecha_salto DATE NOT NULL,
    CONSTRAINT chk_selvin_049_altura CHECK (altura_metros > 0),
    CONSTRAINT chk_selvin_049_experiencia CHECK (experiencia_saltos >= 0),
    CONSTRAINT chk_selvin_049_costo CHECK (costo >= 0)
);
