-- Ejercicio 038: UPDATE para futbol sala

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS equipos_futsala_038;

CREATE TABLE equipos_futsala_038 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	equipo VARCHAR(100) NOT NULL UNIQUE,
	partidos INT NOT NULL DEFAULT 0,
	puntos INT NOT NULL DEFAULT 0,
	goles_favor INT NOT NULL DEFAULT 0,
	goles_contra INT NOT NULL DEFAULT 0,
	estado ENUM('activo', 'eliminado') NOT NULL DEFAULT 'activo',
	CONSTRAINT chk_selvin_038_valores
		CHECK (partidos >= 0 AND puntos >= 0 AND goles_favor >= 0 AND goles_contra >= 0)
);
