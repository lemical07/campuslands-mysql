# Resolucion del ejercicio 022 - ORDER BY en animacion 3D

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar escenas de animacion 3D y practicar `ORDER BY` para presentar resultados ordenados por distintos criterios de negocio.

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

1. `ddl/schema.sql`: crea la base `campuslands_mysql` y la tabla `escenas_animacion_022`.
2. `dml/inserts.sql`: inserta 10 escenas de animacion 3D.
3. `dql/consultas.sql`: ejecuta seis consultas con diferentes ordenamientos.

Los archivos deben ejecutarse desde un cliente compatible con MySQL, respetando el orden indicado. Es necesario contar con un servidor MySQL activo y permisos para crear la base de datos y la tabla.

## Decisiones tecnicas

- Se usa `DECIMAL(10,2)` para almacenar el puntaje con precision.
- El campo `estado` usa `ENUM` para limitar los estados posibles de una escena.
- La restriccion `CHECK` evita duraciones negativas o superiores a 60 segundos.
- Los registros tienen categorias, puntajes, duraciones y estados variados para comprobar ordenamientos ascendentes y descendentes.
