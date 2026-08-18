# Resolucion del ejercicio 034 - INSERT para garaje de motos

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar motos en un garaje usando sentencias `INSERT` y consultar el inventario por marca, cilindrada, precio y estado.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, luego `dml/inserts.sql` y finalmente `dql/consultas.sql` desde un cliente compatible con MySQL.

## Decisiones tecnicas

Se usa `DECIMAL` para precios, `INT` para cilindrada y `ENUM` para el estado. Las restricciones validan el precio y la cilindrada de cada moto.
