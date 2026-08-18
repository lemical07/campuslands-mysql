# Resolucion del ejercicio 023 - UPDATE en arquitectura 3D

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar proyectos de arquitectura 3D y practicar `UPDATE` para modificar puntajes, estados y fechas de entrega de forma controlada.

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

1. `ddl/schema.sql`: crea la base `campuslands_mysql` y la tabla `proyectos_arquitectura_023`.
2. `dml/inserts.sql`: inserta 10 proyectos de arquitectura 3D.
3. `dql/consultas.sql`: ejecuta actualizaciones controladas y consultas para verificar los cambios.

Los archivos deben ejecutarse desde un cliente compatible con MySQL, respetando el orden indicado. Es necesario contar con un servidor MySQL activo y permisos para crear la base de datos y la tabla.

## Decisiones tecnicas

- Se usa `DECIMAL(10,2)` para almacenar el presupuesto con precision.
- El campo `estado` usa `ENUM` para limitar los estados posibles del proyecto.
- Las restricciones `CHECK` evitan presupuestos y cantidades de pisos fuera de los rangos definidos.
- Cada `UPDATE` incluye un `WHERE` especifico para evitar modificar registros no relacionados.
