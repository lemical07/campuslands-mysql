-- Ejercicio 057: datos de accion y aventura

USE campuslands_mysql;
INSERT INTO personajes_aventura_057 (nombre, clase, nivel, experiencia) VALUES
('Ayla','exploradora',18,4200),('Bran','guerrero',25,7800),('Ciro','inventor',12,2500),('Dara','guardiana',31,11200),
('Eron','rastreador',22,6400),('Fara','sanadora',16,3900),('Galen','guerrero',38,15800),('Hira','exploradora',9,1700);
INSERT INTO misiones_aventura_057 (nombre,dificultad,recompensa_experiencia,estado) VALUES
('Mapa perdido','facil',800,'completada'),('Ruinas del norte','media',1500,'activa'),('Torre olvidada','dificil',2600,'disponible'),
('Defensa del puerto','media',1800,'activa'),('Dragon de ceniza','epica',5000,'disponible'),('Rescate en mina','dificil',3000,'activa');
INSERT INTO participaciones_aventura_057 (personaje_id,mision_id,progreso) VALUES
(1,2,60),(2,2,80),(4,4,100),(5,3,35),(7,5,75),(8,1,100);
INSERT INTO recompensas_aventura_057 (mision_id,nombre,valor) VALUES
(1,'Brujula antigua',300),(2,'Armadura del norte',1200),(3,'Llave de obsidiana',1800),
(4,'Medalla del puerto',900),(5,'Fragmento de dragon',4000),(6,'Pico reforzado',1500);
