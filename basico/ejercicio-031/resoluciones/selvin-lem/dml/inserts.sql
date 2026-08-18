USE campuslands_mysql;

INSERT INTO equipos_moba_031 (nombre, region, victorias) VALUES
	('Dragones Rojos', 'Norte', 8),
	('Lobos Azules', 'Sur', 6),
	('Titanes', 'Centro', 10),
	('Halcones', 'Norte', 5),
	('Fenix', 'Sur', 7),
	('Guardianes', 'Centro', 4);

INSERT INTO jugadores_moba_031 (nombre, rol, equipo_id) VALUES
	('Aris', 'tanque', 1),
	('Beto', 'mago', 1),
	('Cora', 'soporte', 2),
	('Dilan', 'tirador', 2),
	('Eva', 'asesino', 3),
	('Fede', 'mago', 3),
	('Gabi', 'tirador', 4),
	('Hugo', 'soporte', 4),
	('Iris', 'tanque', 5),
	('Joel', 'asesino', 6);

INSERT INTO partidas_moba_031
	(equipo_local_id, equipo_visitante_id, puntos_local, puntos_visitante, fecha_partida)
VALUES
	(1, 2, 18, 12, '2026-08-01'),
	(3, 4, 20, 10, '2026-08-02'),
	(5, 6, 15, 17, '2026-08-03'),
	(2, 3, 11, 19, '2026-08-05'),
	(4, 1, 14, 16, '2026-08-06'),
	(6, 5, 13, 18, '2026-08-08');
