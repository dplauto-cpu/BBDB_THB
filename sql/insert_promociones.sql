INSERT INTO public.promociones (cod_curso, cod_campus, fecha)
SELECT DISTINCT
    CASE 
        WHEN "Promoción" ILIKE '%Data Science%' THEN 1 
        ELSE 2 
    END AS cod_curso,
    CASE 
        WHEN "Campus" ILIKE '%Madrid%' THEN 1 
        ELSE 2 
    END AS cod_campus,
    TO_DATE("Fecha_comienzo", 'DD/MM/YYYY') AS fecha
FROM (
    SELECT "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_1
    UNION
    SELECT "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_2
    UNION
    SELECT "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_3
    UNION
    SELECT "Promoción", "Campus", "Fecha_comienzo" FROM public.clase_4
) AS temp_promos;