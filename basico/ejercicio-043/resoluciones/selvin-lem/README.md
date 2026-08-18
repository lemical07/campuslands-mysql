# Resolucion del ejercicio 043 - Filtros por estado para peliculas de miedo

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Consultar un catalogo de peliculas de miedo mediante filtros por estado, genero y clasificacion.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

El estado usa `ENUM` y las restricciones validan duracion y calificacion. Las consultas separan peliculas disponibles, archivadas y en produccion.
