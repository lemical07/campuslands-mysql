# Resolucion del ejercicio 036 - WHERE para autos hiperdeportivos

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Consultar un inventario de autos hiperdeportivos mediante filtros `WHERE` sobre precio, potencia, pais y disponibilidad.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, luego `dml/inserts.sql` y finalmente `dql/consultas.sql` desde un cliente compatible con MySQL.

## Decisiones tecnicas

Se usa `DECIMAL` para precios, `INT` para potencia y `ENUM` para el estado. Las restricciones validan precio y potencia.
