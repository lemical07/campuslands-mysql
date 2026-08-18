-- Ejercicio 050: SELECT para estudio de tatuajes

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS citas_tatuajes_050;
CREATE TABLE citas_tatuajes_050 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    estilo VARCHAR(70) NOT NULL,
    duracion_horas DECIMAL(4, 2) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL,
    fecha_cita DATE NOT NULL,
    estado ENUM('reservada', 'realizada', 'cancelada') NOT NULL DEFAULT 'reservada',
    CONSTRAINT chk_selvin_050_duracion CHECK (duracion_horas > 0),
    CONSTRAINT chk_selvin_050_precio CHECK (precio >= 0)
);
