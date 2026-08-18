# Resolucion del ejercicio 028 - Filtros por estado en academia tech

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar cursos de una academia tech y consultar su disponibilidad mediante filtros por estado, categoria y nivel.

## Proceso de ejecucion

Ejecutar los archivos en este orden:

1. `ddl/schema.sql`: crea la base y la tabla `cursos_academia_028`.
2. `dml/inserts.sql`: inserta 10 cursos de tecnologia.
3. `dql/consultas.sql`: ejecuta consultas filtradas por estado.

Los archivos deben ejecutarse desde un cliente compatible con MySQL y con un servidor MySQL activo.

## Decisiones tecnicas

- El campo `estado` usa `ENUM` para controlar los estados posibles del curso.
- Las restricciones `CHECK` validan el nivel, la duracion y el cupo disponible.
- Los datos cubren cursos activos, en revision y cerrados para probar diferentes filtros.
- Las consultas usan alias en los reportes para facilitar su lectura.
