--Calificaciones Clase 1data
INSERT INTO public.proyecto_alumno (cod_proyecto, cod_alumno, nota)
SELECT lat.cod_proj, a.cod_alumno, (lat.nota_txt = 'Apto')
FROM public.clase_1 c1
INNER JOIN public.alumnos a ON LOWER(TRIM(c1."Email")) = LOWER(TRIM(a.email))
CROSS JOIN LATERAL (
    VALUES 
        (1, c1."Proyecto_HLF"),
        (8, c1."Proyecto_EDA"),
        (2, c1."Proyecto_BBDD"),
        (3, c1."Proyecto_ML"),
        (9, c1."Proyecto_Deployment")
) AS lat(cod_proj, nota_txt);

--Calificaciones Clase 2 data
INSERT INTO public.proyecto_alumno (cod_proyecto, cod_alumno, nota)
SELECT lat.cod_proj, a.cod_alumno, (lat.nota_txt = 'Apto')
FROM public.clase_2 c2
INNER JOIN public.alumnos a ON LOWER(TRIM(c2."Email")) = LOWER(TRIM(a.email))
CROSS JOIN LATERAL (
    VALUES 
        (1, c2."Proyecto_HLF"),
        (8, c2."Proyecto_EDA"),
        (2, c2."Proyecto_BBDD"),
        (3, c2."Proyecto_ML"),
        (9, c2."Proyecto_Deployment")
) AS lat(cod_proj, nota_txt);

-- Calificaciones Clase 3full
INSERT INTO public.proyecto_alumno (cod_proyecto, cod_alumno, nota)
SELECT lat.cod_proj, a.cod_alumno, (lat.nota_txt = 'Apto')
FROM public.clase_3 c3
INNER JOIN public.alumnos a ON LOWER(TRIM(c3."Email")) = LOWER(TRIM(a.email))
CROSS JOIN LATERAL (
    VALUES 
        (10, c3."Proyecto_WebDev"),
        (4,  c3."Proyecto_FrontEnd"),
        (5,  c3."Proyecto_Backend"),
        (6,  c3."Proyecto_React"),
        (7,  c3."Proyecto_FullSatck")
) AS lat(cod_proj, nota_txt);

--Calificaciones Clase 4 full
INSERT INTO public.proyecto_alumno (cod_proyecto, cod_alumno, nota)
SELECT lat.cod_proj, a.cod_alumno, (lat.nota_txt = 'Apto')
FROM public.clase_4 c4
INNER JOIN public.alumnos a ON LOWER(TRIM(c4."Email")) = LOWER(TRIM(a.email))
CROSS JOIN LATERAL (
    VALUES 
        (10, c4."Proyecto_WebDev"),
        (4,  c4."Proyecto_FrontEnd"),
        (5,  c4."Proyecto_Backend"),
        (6,  c4."Proyecto_React"),
        (7,  c4."Proyecto_FullSatck")
) AS lat(cod_proj, nota_txt);