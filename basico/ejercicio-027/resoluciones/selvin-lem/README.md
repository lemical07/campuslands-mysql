# Resolucion del ejercicio 027 - Modelado de entidad en accion y aventura

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Modelar entidades principales de un videojuego de accion y aventura mediante personajes, misiones y recompensas relacionadas.

## Proceso de ejecucion

Ejecutar en este orden:

1. `ddl/schema.sql`: crea la base y las tablas del videojuego.
2. `dml/inserts.sql`: inserta personajes, misiones y recompensas.
3. `dql/consultas.sql`: consulta el progreso y las recompensas de las misiones.

La ejecucion debe realizarse con un cliente compatible con MySQL y un servidor MySQL activo.

## Decisiones tecnicas

- Se separan personajes, misiones y recompensas para representar entidades con responsabilidades claras.
- Las claves foraneas mantienen la relacion entre misiones, personajes y recompensas.
- Las restricciones `CHECK` controlan niveles, experiencia y valores de recompensa.
- La tabla intermedia permite que un personaje participe en varias misiones y una mision tenga varios participantes.
