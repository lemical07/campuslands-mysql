# Resolucion del ejercicio 058 - Filtros por estado para academia tech

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Filtrar cursos de una academia tech por estado, nivel, categoria y cupos disponibles.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

El estado y nivel usan `ENUM`. Las restricciones validan duracion y cupos, y las consultas usan filtros combinados.
