-- Ejercicio 056: validaciones simples para videojuego RPG

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS personajes_rpg_056;
CREATE TABLE personajes_rpg_056 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    clase ENUM('guerrero', 'mago', 'arquero', 'curandero') NOT NULL,
    nivel INT NOT NULL,
    vida INT NOT NULL,
    mana INT NOT NULL,
    estado ENUM('activo', 'pausa', 'retirado') NOT NULL,
    CONSTRAINT chk_selvin_056_nivel CHECK (nivel BETWEEN 1 AND 100),
    CONSTRAINT chk_selvin_056_vida CHECK (vida BETWEEN 1 AND 10000),
    CONSTRAINT chk_selvin_056_mana CHECK (mana >= 0)
);
