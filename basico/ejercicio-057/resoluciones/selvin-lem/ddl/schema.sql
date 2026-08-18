-- Ejercicio 057: modelado de entidad para accion y aventura

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS recompensas_aventura_057;
DROP TABLE IF EXISTS participaciones_aventura_057;
DROP TABLE IF EXISTS misiones_aventura_057;
DROP TABLE IF EXISTS personajes_aventura_057;
CREATE TABLE personajes_aventura_057 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    clase VARCHAR(60) NOT NULL,
    nivel INT NOT NULL,
    experiencia INT NOT NULL,
    CONSTRAINT chk_selvin_057_nivel CHECK (nivel BETWEEN 1 AND 100),
    CONSTRAINT chk_selvin_057_experiencia CHECK (experiencia >= 0)
);
CREATE TABLE misiones_aventura_057 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    dificultad ENUM('facil', 'media', 'dificil', 'epica') NOT NULL,
    recompensa_experiencia INT NOT NULL,
    estado ENUM('disponible', 'activa', 'completada') NOT NULL,
    CONSTRAINT chk_selvin_057_recompensa CHECK (recompensa_experiencia > 0)
);
CREATE TABLE participaciones_aventura_057 (
    personaje_id INT NOT NULL,
    mision_id INT NOT NULL,
    progreso INT NOT NULL DEFAULT 0,
    PRIMARY KEY (personaje_id, mision_id),
    CONSTRAINT chk_selvin_057_progreso CHECK (progreso BETWEEN 0 AND 100),
    CONSTRAINT fk_selvin_057_personaje FOREIGN KEY (personaje_id) REFERENCES personajes_aventura_057(id),
    CONSTRAINT fk_selvin_057_mision FOREIGN KEY (mision_id) REFERENCES misiones_aventura_057(id)
);
CREATE TABLE recompensas_aventura_057 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mision_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    valor INT NOT NULL,
    CONSTRAINT chk_selvin_057_valor CHECK (valor > 0),
    CONSTRAINT fk_selvin_057_recompensa FOREIGN KEY (mision_id) REFERENCES misiones_aventura_057(id)
);
