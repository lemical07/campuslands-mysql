# Resolucion del ejercicio 047 - Tipos de datos para tienda de ropa

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Registrar prendas de una tienda usando tipos adecuados para tallas, precios, stock y fechas.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

Se usa `DECIMAL` para precios, `INT` para stock, `DATE` para ingreso y `ENUM` para talla y estado. Las restricciones evitan valores invalidos.
