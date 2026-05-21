-- Tabla de Alumnos
CREATE TABLE Alumnos (  
  Cod_Alumno SERIAL PRIMARY KEY,
  Nombre VARCHAR(100),
  Email VARCHAR(100)
);

-- Tabla de Cursos
CREATE TABLE Cursos (
  Cod_Curso SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- Tabla de Campus
CREATE TABLE Campus (
  Cod_Campus SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- Tabla de Promociones
CREATE TABLE Promociones (  
  Cod_Promocion SERIAL PRIMARY KEY,
  Cod_Alumno INT,
  Cod_Curso INT,
  Cod_Campus INT,
  Fecha DATE
);

-- Tabla de Profesor
CREATE TABLE Profesor (
  Cod_Profesor SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- Tabla de Pro_pro
CREATE TABLE Pro_pro (
  Cod_Pro_Pro SERIAL PRIMARY KEY,
  Cod_Profesor INT,
  Cod_Promocion INT
);

-- Tabla de Roles
CREATE TABLE Roles (
  Cod_Rol SERIAL PRIMARY KEY,
  Descripcion VARCHAR(50)
);

-- Tabla de Rol_profesor
CREATE TABLE Rol_profesor (
  Cod_Rol_Profesor SERIAL PRIMARY KEY,
  Cod_Profesor INT,
  Cod_Rol INT
);

-- Tabla de Proyecto
CREATE TABLE Proyectos (
  Cod_Proyecto SERIAL PRIMARY KEY,
  Descripcion VARCHAR(50)
);

-- Tabla de Proyecto_Alumno
CREATE TABLE Proyecto_Alumno (
  Cod_Proyecto_Alumno SERIAL PRIMARY KEY,
  Cod_Proyecto INT,
  Cod_Alumno INT,
  Nota BOOLEAN
);

