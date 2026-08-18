# Resolucion del ejercicio 026 - Validaciones simples en videojuego RPG

**Estudiante:** Selvin Lem  
**Nivel:** Basico aplicado

## Objetivo

Registrar personajes de un videojuego RPG y aplicar validaciones simples sobre sus niveles, puntos de vida, mana y estado.

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

1. `ddl/schema.sql`: crea la base `campuslands_mysql` y la tabla `personajes_rpg_026`.
2. `dml/inserts.sql`: inserta 10 personajes.
3. `dql/consultas.sql`: ejecuta validaciones y consultas de analisis.

Los archivos deben ejecutarse desde un cliente compatible con MySQL, respetando el orden indicado. Es necesario contar con un servidor MySQL activo y permisos para crear la base de datos y la tabla.

## Decisiones tecnicas

- Se usan restricciones `CHECK` para mantener nivel, vida y mana dentro de rangos validos.
- El campo `clase` usa `ENUM` para limitar las clases disponibles.
- El campo `estado` permite identificar personajes activos, en pausa o retirados.
- Las consultas usan `CASE` para clasificar personajes segun sus puntos de vida y nivel.
