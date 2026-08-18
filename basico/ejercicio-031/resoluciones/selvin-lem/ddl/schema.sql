-- Ejercicio 031: CREATE TABLE para torneo esports MOBA

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS partidas_moba_031;
DROP TABLE IF EXISTS jugadores_moba_031;
DROP TABLE IF EXISTS equipos_moba_031;

CREATE TABLE equipos_moba_031 (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nombre VARCHAR(100) NOT NULL UNIQUE,
   region VARCHAR(60) NOT NULL,
   victorias INT NOT NULL DEFAULT 0,
   CONSTRAINT chk_selvin_031_victorias CHECK (victorias >= 0)
);

CREATE TABLE jugadores_moba_031 (
   id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL, 
   rol ENUM('tanque', 'asesino', 'soporte', 'tirador', 'mago') NOT NULL,
   equipo_id INT NOT NULL,
   CONSTRAINT fk_selvin_031_jugador_equipo
      FOREIGN KEY (equipo_id) REFERENCES equipos_moba_031(id)
);

CREATE TABLE partidas_moba_031 (
   id INT AUTO_INCREMENT PRIMARY KEY,
   equipo_local_id INT NOT NULL,
   equipo_visitante_id INT NOT NULL,
   puntos_local INT NOT NULL,
   puntos_visitante INT NOT NULL,
   fecha_partida DATE NOT NULL,
   CONSTRAINT chk_selvin_031_puntos
      CHECK (puntos_local >= 0 AND puntos_visitante >= 0),
   CONSTRAINT fk_selvin_031_local
      FOREIGN KEY (equipo_local_id) REFERENCES equipos_moba_031(id),
   CONSTRAINT fk_selvin_031_visitante
      FOREIGN KEY (equipo_visitante_id) REFERENCES equipos_moba_031(id)
);
