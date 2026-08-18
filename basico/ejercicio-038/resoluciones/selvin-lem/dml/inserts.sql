-- Ejercicio 038: datos iniciales del torneo

USE campuslands_mysql;

INSERT INTO equipos_futsala_038
	(equipo, partidos, puntos, goles_favor, goles_contra)
VALUES
	('Rayo Futsal', 3, 6, 12, 7),
	('Azul Sala', 3, 4, 9, 8),
	('Titanes', 3, 7, 15, 6),
	('Estrellas', 3, 2, 6, 11),
	('Halcones', 3, 5, 10, 9),
	('Guerreros', 3, 1, 5, 14),
	('Tormenta', 3, 8, 17, 5),
	('Centellas', 3, 3, 8, 12);
