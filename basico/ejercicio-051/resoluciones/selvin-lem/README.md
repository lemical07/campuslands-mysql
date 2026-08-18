# Resolucion del ejercicio 051 - WHERE para dibujo digital

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Filtrar proyectos de dibujo digital por categoria, estado, precio y fecha.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

Se usa `DECIMAL` para precio, `DATE` para entrega y `ENUM` para el estado. Las restricciones validan precio y horas.
