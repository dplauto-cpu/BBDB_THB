INSERT INTO public.alumno_promocion (cod_alumno, cod_promocion)
SELECT DISTINCT a.cod_alumno, p.cod_promocion
FROM (
    SELECT "Email", "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_1
    UNION ALL
    SELECT "Email", "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_2
    UNION ALL
    SELECT "Email", "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_3
    UNION ALL
    SELECT "Email", "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_4
) AS c
INNER JOIN public.alumnos a ON LOWER(TRIM(c."Email")) = LOWER(TRIM(a.email))
INNER JOIN public.promociones p ON 
    p.cod_curso = (CASE WHEN c."Promoción" ILIKE '%Data Science%' THEN 1 ELSE 2 END)
    AND p.cod_campus = (CASE WHEN c."Campus" ILIKE '%Madrid%' THEN 1 ELSE 2 END)
    AND p.fecha = TO_DATE(c."Fecha_comienzo", 'DD/MM/YYYY');