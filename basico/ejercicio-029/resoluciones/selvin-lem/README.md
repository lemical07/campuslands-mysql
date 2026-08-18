# Resolucion del ejercicio 029 - Fechas en marketplace de accesorios

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar accesorios de un marketplace y consultar fechas de publicacion, actualizacion y finalizacion de promociones.

## Proceso de ejecucion

Ejecutar los archivos en este orden:

1. `ddl/schema.sql`: crea la base y la tabla `productos_marketplace_029`.
2. `dml/inserts.sql`: inserta 10 productos.
3. `dql/consultas.sql`: ejecuta consultas con fechas y rangos temporales.

Los archivos deben ejecutarse desde un cliente compatible con MySQL y con un servidor MySQL activo.

## Decisiones tecnicas

- Se usan columnas `DATE` para representar fechas sin hora.
- La restriccion `CHECK` evita precios negativos y descuentos fuera del rango permitido.
- Las consultas emplean `DATEDIFF` para calcular la vigencia de promociones.
- Los registros cubren productos publicados, actualizados y con promociones en diferentes fechas.
