# Resolucion del ejercicio 057 - Modelado para accion y aventura

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Modelar personajes, misiones y recompensas de un videojuego de accion y aventura.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

Las claves foraneas relacionan personajes con misiones. La tabla intermedia evita duplicar participantes y las restricciones validan progreso y experiencia.
