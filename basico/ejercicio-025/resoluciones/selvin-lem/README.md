# Resolucion del ejercicio 025 - COUNT y SUM en formulas quimicas

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar formulas quimicas de laboratorio y practicar `COUNT` y `SUM` para obtener cantidades de experimentos y materiales utilizados.

## Estructura

```text
selvin-lem/
├── README.md
├── ddl/
│   └── schema.sql
├── dml/
│   └── inserts.sql
└── dql/
    └── consultas.sql
```

## Proceso de ejecucion

Ejecutar los archivos en este orden:

1. `ddl/schema.sql`: crea la base `campuslands_mysql` y la tabla `formulas_quimicas_025`.
2. `dml/inserts.sql`: inserta 10 formulas de laboratorio.
3. `dql/consultas.sql`: ejecuta consultas con `COUNT` y `SUM`.

Los archivos deben ejecutarse desde un cliente compatible con MySQL, respetando el orden indicado. Es necesario contar con un servidor MySQL activo y permisos para crear la base de datos y la tabla.

## Decisiones tecnicas

- Se usa `DECIMAL(10,2)` para registrar la cantidad de gramos con precision.
- El campo `estado` usa `ENUM` para limitar el ciclo de vida de cada formula.
- Las restricciones `CHECK` evitan cantidades negativas y duraciones invalidas.
- Los datos permiten contar formulas y sumar materiales por categoria y estado.
