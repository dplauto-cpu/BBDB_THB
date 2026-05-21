# Proyecto de Base de Datos Relacional - Bootcamp

## Descripción del Proyecto

Este proyecto consiste en la creación de una base de datos relacional a partir una seri de archivos cvs con datos ficticios  de estudiantes y profesores de una escuela de bootcamps en Data Science y Full Stack. Los objetivos son aplicar todos los conceptos que incluyen la creación de una base de datos desde cero: normalización, modelo entidad-relación (E/R), modelo lógico e implementación en PostgreSQL, garantizando escalabilidad para futuros campus, promociones, modalidades, etc. y una plena funcionalidad de la misma.

El proyecto se ha desarrollado en equipos mixtos.

## Estructura del Repositorio
├── docs/  
│   ├── modelo_entidad_relacion.png      # Diagrama E/R  
│   └── modelo_logico.png                # Diagrama lógico  
├── sql/  
│   ├── create_tables.sql                # Script de creación de tablas  
│   └── insert_data.sql                  # Script de ingesta de datos  
├── queries/  
│   └── demo_queries.sql                 # Consultas de ejemplo    
│     
└── README.md  

## Modelo Lógico Propuesto

El modelo lógico incluye las siguientes entidades principales:

- **Alumnos** (`cod_alumno`, `nombre`, `email`) → Ej: Amadeo de Saboya, amasa@gmail.it
- **Cursos** (`cod_curso`, `nombre`) → Ej: Data Science, Full Stack
- **Campus** (`cod_campus`, `nombre`) → Ej: Madrid, Valencia
- **Promociones** (`cod_promocion`, `cod_alumno`, `cod_curso`, `cod_campus`, `fecha`)
- **Calificaciones** (`cod_calificacion`, ...) → para almacenar notas por proyecto
- **Profesores** (`cod_profesor`, `nombre`, `rol`) → Ej: Fernando VII, Máster en Corrupción
- **Pro_pro**  (`cod_Pro_pro`, `cod_profesor`, `cod_promocion`)
- **Roles**`(cod_rol`, `descripcion`)
- **Rol_profesor** (`cod_Rol_Profesor`, `cod_profesor`, `cod_rol`)
- **Proyecto** (`cod_proyecto`, `descripcion`)
- **Proyecto_Alumno** ( `cod_proyecto_alumno`, `cod_proyecto`, `cod_alumno`, `nota`)


Este diseño permite escalar horizontalmente: nuevos campus, nuevas promociones, nuevas verticales o modalidades sin redundancias.

> 📌 *Ver diagrama completo en la carpeta **`docs/`***

## Sotware 

- **PostgreSQL** (motor de base de datos)
- **Render** (despliegue gratuito de la BD)
- **GitHub** (control de versiones y colaboración)
- **Draw.io** (diagramas E/R y lógico)
