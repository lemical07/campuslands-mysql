-- Ejercicio 037: ORDER BY para liga de futbol

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS clasificacion_futbol_037;
CREATE TABLE clasificacion_futbol_037 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(80) NOT NULL,
    partidos INT NOT NULL,
    puntos INT NOT NULL,
    goles_favor INT NOT NULL,
    goles_contra INT NOT NULL,
    estado ENUM('activo', 'retirado') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_selvin_037_partidos CHECK (partidos >= 0),
    CONSTRAINT chk_selvin_037_puntos CHECK (puntos >= 0),
    CONSTRAINT chk_selvin_037_goles CHECK (goles_favor >= 0 AND goles_contra >= 0)
);
