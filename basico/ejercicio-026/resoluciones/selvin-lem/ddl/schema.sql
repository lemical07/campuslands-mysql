-- Ejercicio 026: validaciones simples en videojuego RPG

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS personajes_rpg_026;

CREATE TABLE personajes_rpg_026 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    clase ENUM('guerrero', 'mago', 'arquero', 'curandero') NOT NULL,
    nivel INT NOT NULL,
    puntos_vida INT NOT NULL,
    puntos_mana INT NOT NULL,
    estado ENUM('activo', 'pausa', 'retirado') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_selvin_026_nivel CHECK (nivel BETWEEN 1 AND 100),
    CONSTRAINT chk_selvin_026_vida CHECK (puntos_vida BETWEEN 1 AND 10000),
    CONSTRAINT chk_selvin_026_mana CHECK (puntos_mana BETWEEN 0 AND 5000)
);
