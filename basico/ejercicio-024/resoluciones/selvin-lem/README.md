# Resolucion del ejercicio 024 - DELETE controlado en soldadura

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar trabajos de soldadura y practicar `DELETE` controlado para retirar registros archivados sin afectar los trabajos activos.

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

1. `ddl/schema.sql`: crea la base `campuslands_mysql` y la tabla `trabajos_soldadura_024`.
2. `dml/inserts.sql`: inserta 10 trabajos de soldadura.
3. `dql/consultas.sql`: elimina de forma controlada los trabajos archivados y ejecuta consultas de verificacion.

Los archivos deben ejecutarse desde un cliente compatible con MySQL, respetando el orden indicado. Es necesario contar con un servidor MySQL activo y permisos para crear la base de datos y la tabla.

## Decisiones tecnicas

- Se usa `DECIMAL(10,2)` para registrar el costo con precision.
- El campo `estado` usa `ENUM` para limitar los estados posibles del trabajo.
- La restriccion `CHECK` evita costos negativos y cantidades de piezas fuera del rango definido.
- El `DELETE` utiliza `WHERE estado = 'archivado'`, por lo que solo afecta registros que cumplen esa condicion.
