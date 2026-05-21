# Proyecto de Base de Datos Relacional - Bootcamp

## Descripción del Proyecto

Este proyecto, desarrollado en equipos mixtos, consiste en la creación de una base de datos relacional a partir de una serie de archivos cvs con datos ficticios  de estudiantes y profesores de dos bootcamps en Data Science y Full Stack. El objetivo es aplicar todos los conceptos que incluyen la creación de una base de datos desde cero: normalización, modelo entidad-relación (E/R), modelo lógico e implementación en PostgreSQL, que garantice escalabilidad para futuros campus, promociones, modalidades, etc. y una plena funcionalidad de la misma.


## Estructura del Repositorio
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

## Modelo Lógico Propuesto

El modelo lógico incluye las siguientes entidades principales:

- **Alumnos** (`Cod_Alumno`, `Nombre`, `Email`) → Ej: Amadeo de Saboya, amasa@gmail.it
- **Cursos** (`Cod_Curso`, `Nombre`) → Ej: Data Science, Full Stack
- **Campus** (`Cod_Campus`, `Nombre`) → Ej: Madrid, Valencia
- **Promociones** (`cod_Promocion`, `Cod_Alumno`, `Cod_Curso`, `Cod_Campus`, `Fecha`)
- **Profesores** (`Cod_Profesor`, `Nombre`) → Ej: Fernando VII, Máster en Corrupción
- **Pro_pro**  (`Cod_Pro_Pro`, `Cod_Profesor`, `Cod_Promocion`)
- **Roles**`(Cod_Rol`, `Descripcion`)
- **Rol_profesor** (`Cod_Rol_Profesor`, `Cod_Profesor`, `Cod_Rol`)
- **Proyecto** (`Cod_Proyecto`, `Descripcion`)
- **Proyecto_Alumno** ( `Cod_Proyecto_Alumno`, `Cod_Proyecto`, `Cod_Alumno`, `Nota`)

> 📌 *Ver diagrama completo en la carpeta **`docs/`***

## Sotware 

- **PostgreSQL** (motor de base de datos)
- **Render** (despliegue gratuito de la BD)
- **GitHub** (control de versiones y colaboración)
- **Draw.io / Lucidchart** (diagramas E/R y lógico)
