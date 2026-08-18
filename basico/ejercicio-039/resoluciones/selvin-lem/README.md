# Resolucion del ejercicio 039 - DELETE controlado para kickboxing

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar peleadores de kickboxing y practicar un `DELETE` controlado sobre perfiles archivados.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, luego `dml/inserts.sql` y finalmente `dql/consultas.sql` desde un cliente compatible con MySQL.

## Decisiones tecnicas

El campo `estado` identifica perfiles activos, en preparacion y archivados. El `DELETE` usa una condicion especifica sobre el estado y las restricciones validan edad, peso y victorias.
