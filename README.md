# BBDB_THB
## Proyecto de Base de Datos Relacional - Bootcamp

## Descripción del Proyecto
#
Este proyecto consiste en la creación de una base de datos relacional a partir una seri de archivos cvs con datos ficticios  de estudiantes y profesores de una escuela de bootcamps en Data Science y Full Stack. Los objetivos son aplicar todos los conceptos que incluyen la creación de una base de datos desde cero: normalización, modelo entidad-relación (E/R), modelo lógico e implementación en PostgreSQL, garantizando escalabilidad para futuros campus, promociones, modalidades, etc. y una plena funcionalidad de la misma

El proyecto se ha desarrollado en equipos mixtos

---

### Estructura del Repositorio
# Proyecto de Base de Datos Relacional - Bootcamp

## Descripción del Proyecto

Este proyecto consiste en la creación de una base de datos relacional a partir de datos no normalizados de estudiantes y profesores de una escuela de bootcamps. El objetivo es aplicar conceptos de normalización, modelo entidad-relación (E/R), modelo lógico e implementación en PostgreSQL, garantizando escalabilidad para futuros campus, promociones, modalidades, etc.

El proyecto se desarrolla en equipos mixtos (Data Science y Full Stack) y será presentado el **22 de mayo a las 9:00**.

---

## Estructura del Repositorio

```markdown
├── docs/
│   ├── modelo_entidad_relacion.png      # Diagrama E/R
│   └── modelo_logico.png                # Diagrama lógico
├── sql/
│   ├── create_tables.sql                # Script de creación de tablas
│   └── insert_data.sql                  # Script de ingesta de datos
├── queries/
│   └── demo_queries.sql                 # Consultas de ejemplo
├── data/
│   └── raw_data.csv                     # Datos originales (anonimizados)
└── README.md
