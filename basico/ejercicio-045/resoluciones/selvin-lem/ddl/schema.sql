-- Ejercicio 045: relaciones simples para biblioteca gamer

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS prestamos_gamer_045;
DROP TABLE IF EXISTS juegos_gamer_045;
DROP TABLE IF EXISTS usuarios_gamer_045;
CREATE TABLE usuarios_gamer_045 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nivel ENUM('basico', 'intermedio', 'avanzado') NOT NULL
);
CREATE TABLE juegos_gamer_045 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL UNIQUE,
    genero VARCHAR(60) NOT NULL,
    copias INT NOT NULL,
    CONSTRAINT chk_selvin_045_copias CHECK (copias >= 0)
);
CREATE TABLE prestamos_gamer_045 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    juego_id INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE NULL,
    estado ENUM('activo', 'devuelto') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_selvin_045_fechas CHECK (fecha_devolucion IS NULL OR fecha_devolucion >= fecha_prestamo),
    CONSTRAINT fk_selvin_045_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios_gamer_045(id),
    CONSTRAINT fk_selvin_045_juego FOREIGN KEY (juego_id) REFERENCES juegos_gamer_045(id)
);
