# Resolucion del ejercicio 033 - PRIMARY KEY para inventario de skins shooter

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar skins de un videojuego shooter usando una clave primaria para identificar cada elemento del inventario.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, luego `dml/inserts.sql` y finalmente `dql/consultas.sql` desde un cliente compatible con MySQL.

## Decisiones tecnicas

La columna `id` es la `PRIMARY KEY` autoincremental. Las restricciones `CHECK` validan el precio y el nivel de desgaste; `UNIQUE` evita repetir el nombre de una skin.
