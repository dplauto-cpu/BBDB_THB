--Insertar alumnos 
INSERT INTO public.alumnos (nombre, email)
SELECT DISTINCT TRIM("Nombre"), LOWER(TRIM("Email"))
FROM (
    SELECT "Nombre", "Email" FROM public.clase_1
    UNION ALL
    SELECT "Nombre", "Email" FROM public.clase_2
    UNION ALL
    SELECT "Nombre", "Email" FROM public.clase_3
    UNION ALL
    SELECT "Nombre", "Email" FROM public.clase_4
) AS temp_alumnos;

--datos rofesores 
INSERT INTO public.profesores (nombre) VALUES
('Noa Yáñez'),
('Saturnina Benitez'),
('Anna Feliu'),
('Rosalva Ayuso'),
('Ana Sofía Ferrer'),
('Angélica Corral'),
('Ariel Lledó'),
('Mario Prats'),
('Luis Ángel Suárez'),
('María Dolores Diaz');