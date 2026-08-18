-- Ejercicio 058: filtros por estado para academia tech

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
DROP TABLE IF EXISTS cursos_academia_058;
CREATE TABLE cursos_academia_058 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL UNIQUE,
    categoria VARCHAR(70) NOT NULL,
    nivel ENUM('inicial', 'intermedio', 'avanzado') NOT NULL,
    duracion_horas INT NOT NULL,
    cupos INT NOT NULL,
    estado ENUM('activo', 'revision', 'cerrado') NOT NULL,
    CONSTRAINT chk_selvin_058_duracion CHECK (duracion_horas > 0),
    CONSTRAINT chk_selvin_058_cupos CHECK (cupos >= 0)
);
