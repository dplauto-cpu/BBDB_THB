-- PROYECTOS_ALUMNO

ALTER TABLE proyectos_alumnos
ADD CONSTRAINT fk_proyecto_alumno_alumno
FOREIGN KEY (cod_alumno)
REFERENCES alumnos(cod_alumno);

ALTER TABLE proyectos_alumnos
ADD CONSTRAINT fk_proyecto_alumno_proyecto
FOREIGN KEY (cod_proyecto)
REFERENCES proyectos(cod_proyecto);

-- ALUMNO_PROMOCION

ALTER TABLE alumnos_promociones
ADD CONSTRAINT fk_alumno_promocion_alumno
FOREIGN KEY (cod_alumno)
REFERENCES alumnos(cod_alumno);

ALTER TABLE alumnos_promociones
ADD CONSTRAINT fk_alumno_promocion_promocion
FOREIGN KEY (cod_promocion)
REFERENCES promociones(cod_promocion);

-- PROMOCIONES

ALTER TABLE promociones
ADD CONSTRAINT fk_promocion_curso
FOREIGN KEY (cod_curso)
REFERENCES cursos(cod_curso);

ALTER TABLE promociones
ADD CONSTRAINT fk_promocion_campus
FOREIGN KEY (cod_campus)
REFERENCES campus(cod_campus);

-- ROL_PROFESOR

ALTER TABLE rol_profesor
ADD CONSTRAINT fk_rol_profesor_rol
FOREIGN KEY (cod_rol)
REFERENCES roles(cod_rol);

ALTER TABLE rol_profesor
ADD CONSTRAINT fk_rol_profesor_profesor
FOREIGN KEY (cod_profesor)
REFERENCES profesores(cod_profesor);

-- PRO_PRO

ALTER TABLE pro_pro
ADD CONSTRAINT fk_pro_pro_profesor
FOREIGN KEY (cod_profesor)
REFERENCES profesores(cod_profesor);

ALTER TABLE pro_pro
ADD CONSTRAINT fk_pro_pro_promocion
FOREIGN KEY (cod_promocion)
REFERENCES promociones(cod_promocion);