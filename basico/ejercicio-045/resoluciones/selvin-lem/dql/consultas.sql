-- Ejercicio 045: consultas de relaciones gamer

USE campuslands_mysql;

SELECT u.nombre AS usuario, j.titulo AS juego, p.fecha_prestamo, p.estado
FROM prestamos_gamer_045 AS p
JOIN usuarios_gamer_045 AS u ON u.id = p.usuario_id
JOIN juegos_gamer_045 AS j ON j.id = p.juego_id
ORDER BY p.fecha_prestamo;

SELECT j.titulo, j.genero, j.copias
FROM juegos_gamer_045 AS j
WHERE j.copias > 1
ORDER BY j.copias DESC, j.titulo;

SELECT u.nombre AS usuario, COUNT(p.id) AS total_prestamos
FROM usuarios_gamer_045 AS u
LEFT JOIN prestamos_gamer_045 AS p ON p.usuario_id = u.id
GROUP BY u.id, u.nombre
ORDER BY total_prestamos DESC;

SELECT j.titulo, COUNT(p.id) AS total_prestamos
FROM juegos_gamer_045 AS j
LEFT JOIN prestamos_gamer_045 AS p ON p.juego_id = j.id
GROUP BY j.id, j.titulo
ORDER BY total_prestamos DESC;

SELECT u.nombre AS usuario, j.titulo AS juego, p.fecha_prestamo
FROM prestamos_gamer_045 AS p
JOIN usuarios_gamer_045 AS u ON u.id = p.usuario_id
JOIN juegos_gamer_045 AS j ON j.id = p.juego_id
WHERE p.estado = 'activo'
ORDER BY p.fecha_prestamo;
