# Resolucion del ejercicio 032 - Tipos de datos para ranking battle royale

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar resultados de jugadores de un battle royale usando tipos de datos adecuados para identificadores, puntuaciones, posiciones, fechas y estados.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, luego `dml/inserts.sql` y finalmente `dql/consultas.sql` desde un cliente compatible con MySQL.

## Decisiones tecnicas

Se usa `INT` para posiciones y eliminaciones, `DECIMAL` para puntuaciones, `DATE` para fechas y `ENUM` para estados. Las restricciones `CHECK` validan posiciones y valores de puntuacion.
