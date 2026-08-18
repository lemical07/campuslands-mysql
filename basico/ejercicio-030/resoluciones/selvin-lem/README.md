# Resolucion del ejercicio 030 - Relaciones simples para streaming

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Modelar creadores de contenido, dispositivos y configuraciones de un equipo de streaming usando relaciones simples entre tablas.

## Proceso de ejecucion

Ejecutar los archivos en este orden:

1. `ddl/schema.sql`: crea la base y las tablas relacionadas.
2. `dml/inserts.sql`: inserta creadores, dispositivos y configuraciones.
3. `dql/consultas.sql`: consulta las relaciones usando `JOIN`.

Los archivos deben ejecutarse desde un cliente compatible con MySQL y con un servidor MySQL activo.

## Decisiones tecnicas

- Las claves foraneas conectan cada configuracion con un creador y un dispositivo.
- La restriccion `CHECK` valida el precio de los dispositivos y la calidad de transmision.
- Se usa una tabla de configuraciones para representar la relacion entre personas y equipos.
- Las consultas muestran datos combinados y resumen el costo del equipo por creador.
