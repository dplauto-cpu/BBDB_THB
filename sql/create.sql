-- 1. Tabla de Alumnos
CREATE TABLE Alumnos (  
  Cod_Alumno SERIAL PRIMARY KEY,
  Nombre VARCHAR(100),
  Email VARCHAR(100)
);

-- 2. Tabla de Cursos
CREATE TABLE Cursos (
  Cod_Curso SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- 3. Tabla de Campus
CREATE TABLE Campus (
  Cod_Campus SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- 4. Tabla de Promociones (Normalizada: representa solo los grupos de clase)
CREATE TABLE Promociones (  
  Cod_Promocion SERIAL PRIMARY KEY,
  Cod_Curso INT,
  Cod_Campus INT,
  Fecha DATE
);

-- 5. Tabla de Alumno_Promocion (Relaciona a los alumnos con sus grupos)
CREATE TABLE Alumno_Promocion (
  Cod_Alumno INT,
  Cod_Promocion INT,
  PRIMARY KEY (Cod_Alumno, Cod_Promocion)
);

-- 6. Tabla de Profesor
CREATE TABLE Profesor (
  Cod_Profesor SERIAL PRIMARY KEY,
  Nombre VARCHAR(100)
);

-- 7. Tabla de Pro_pro (Relaciona a los profesores con los grupos únicos)
CREATE TABLE Pro_pro (
  Cod_Pro_Pro SERIAL PRIMARY KEY,
  Cod_Profesor INT,
  Cod_Promocion INT
);

-- 8. Tabla de Roles
CREATE TABLE Roles (
  Cod_Rol SERIAL PRIMARY KEY,
  Descripcion VARCHAR(50)
);

-- 9. Tabla de Rol_profesor
CREATE TABLE Rol_profesor (
  Cod_Rol_Profesor SERIAL PRIMARY KEY,
  Cod_Profesor INT,
  Cod_Rol INT
);

-- 10. Tabla de Proyectos
CREATE TABLE Proyectos (
  Cod_Proyecto SERIAL PRIMARY KEY,
  Descripcion VARCHAR(50)
);

-- 11. Tabla de Proyectos_Alumno
CREATE TABLE Proyectos_Alumnos (
  Cod_Proyecto_Alumno SERIAL PRIMARY KEY,
  Cod_Proyecto INT,
  Cod_Alumno INT,
  Nota BOOLEAN
);