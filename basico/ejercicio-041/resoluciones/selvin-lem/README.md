# Resolucion del ejercicio 041 - Validaciones simples para pingpong

**Estudiante:** Selvin Lem  
**Nivel:** Basico retador

## Objetivo

Registrar jugadores de pingpong y validar edad, ranking, victorias y estado competitivo.

## Proceso de ejecucion

Ejecutar `ddl/schema.sql`, `dml/inserts.sql` y `dql/consultas.sql` en ese orden desde MySQL.

## Decisiones tecnicas

Las restricciones `CHECK` mantienen los valores deportivos dentro de rangos validos y las consultas usan `CASE` para clasificar el nivel de los jugadores.
