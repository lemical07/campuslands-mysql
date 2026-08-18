# Resolucion del ejercicio 056 - Validaciones simples para videojuego RPG

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Validar atributos de personajes de un videojuego RPG y clasificarlos por nivel y puntos de vida.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

Las restricciones `CHECK` validan nivel, vida y mana. Las consultas utilizan `CASE` para interpretar los valores de los personajes.
