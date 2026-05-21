''' CONSULTAS SENCILLAS

Query1: Alumnos que han aprobado al menos un proyecto

DISTINCT para eliminar duplicados (si alumno aprueba varios proyectos, sale una sola vez)
JOIN entre dos tablas
Filtro por nota aprobada
'''
SELECT DISTINCT a.Nombre, a.Email
FROM Alumnos a
JOIN Proyecto_Alumno pa ON a.Cod_Alumno = pa.Cod_Alumno
WHERE pa.Nota = TRUE
ORDER BY a.Nombre;

'''
Query2: Profesores que tienen asignado un rol específico

JOIN de tres tablas
Filtro por descripción de rol
'''
SELECT pr.Nombre AS Profesor, r.Descripcion AS Rol
FROM Profesor pr
JOIN Rol_profesor rp ON pr.Cod_Profesor = rp.Cod_Profesor
JOIN Roles r ON rp.Cod_Rol = r.Cod_Rol
WHERE r.Descripcion = 'TA'
ORDER BY pr.Nombre;

'''
Query3: Profesores que han impartido más de una promoción (con mayor carga docente)

Función de agregación COUNT
GROUP BY para agrupar registros
HAVING para filtrar agregados
'''
SELECT pr.Nombre, COUNT(DISTINCT pp.Cod_Promocion) AS promociones_impartidas
FROM Profesor pr
JOIN Pro_pro pp ON pr.Cod_Profesor = pp.Cod_Profesor
GROUP BY pr.Cod_Profesor, pr.Nombre
HAVING COUNT(DISTINCT pp.Cod_Promocion) > 1;

''' CONSULTAS MÁS COMPLEJAS

Query4: Alumnos que han suspendido al menos un proyecto

WHERE (filtra filas antes de agrupar) y HAVING (filtra después de agrupar)
Función de agregación COUNT
GROUP BY para agrupar registros
Orden descendente por conteo
'''
SELECT a.Nombre, COUNT(pa.Cod_Proyecto) AS suspensos
FROM Alumnos a
JOIN Proyecto_Alumno pa ON a.Cod_Alumno = pa.Cod_Alumno
WHERE pa.Nota = FALSE
GROUP BY a.Cod_Alumno, a.Nombre
HAVING COUNT(pa.Cod_Proyecto) >= 1
ORDER BY suspensos DESC;

'''
Query5: Promedio de proyectos aprobados por campus (rendimiento por ubicación)

Subconsultas en FROM (tablas anidadas)
AVG() para promedios
'''
SELECT c.Nombre AS Campus,
       AVG(aprobados) AS promedio_proyectos_aprobados
FROM (
  SELECT ca.Cod_Campus, a.Cod_Alumno, COUNT(pa.Cod_Proyecto) AS aprobados
  FROM Campus ca
  JOIN Promociones p ON ca.Cod_Campus = p.Cod_Campus
  JOIN Alumnos a ON p.Cod_Alumno = a.Cod_Alumno
  JOIN Proyecto_Alumno pa ON a.Cod_Alumno = pa.Cod_Alumno
  WHERE pa.Nota = TRUE
  GROUP BY ca.Cod_Campus, a.Cod_Alumno
) AS subconsulta
JOIN Campus c ON subconsulta.Cod_Campus = c.Cod_Campus
GROUP BY c.Nombre;

''' CONSULTA DEL HORROR

Query6: Detectar alumnos con rendimiento irregular: aprobaron los tres proyectos iniciales 
pero suspendieron alguno de los dos finales

WITH xa tablas temporales: iniciales_aprobados y finales_suspendidos
HAVING: cuenta si alumno tiene 3 proyectos iniciales aprobados
Subconsultas escalares en SELECT: cuenta total_finales_suspendidos
EXISTS: si alumno aprobó al menos un proyecto final, CASE convierte booleano en texto
Múltiples JOINs 
DISTINCT xa no duplicar alumnos si suspendieron más de un proyecto final
Ordena por cantidad finales suspendidos y nombre
'''

WITH iniciales_aprobados AS (
  SELECT a.Cod_Alumno, a.Nombre
  FROM Alumnos a
  JOIN Proyectos_Alumnos pa ON a.Cod_Alumno = pa.Cod_Alumno
  WHERE pa.Cod_Proyecto IN (1, 2, 3)
    AND pa.Nota = TRUE
  GROUP BY a.Cod_Alumno, a.Nombre
  HAVING COUNT(DISTINCT pa.Cod_Proyecto) = 3
),
finales_suspendidos AS (
  SELECT DISTINCT a.Cod_Alumno, a.Nombre, p.Descripcion AS proyecto_suspendido
  FROM Alumnos a
  JOIN Proyectos_Alumnos pa ON a.Cod_Alumno = pa.Cod_Alumno
  JOIN Proyectos p ON pa.Cod_Proyecto = p.Cod_Proyecto
  WHERE pa.Cod_Proyecto IN (4, 5)
    AND pa.Nota = FALSE
)
SELECT 
  ia.Nombre AS Alumno,
  fs.proyecto_suspendido,
  (SELECT COUNT(*) 
   FROM Proyectos_Alumnos pa2 
   WHERE pa2.Cod_Alumno = ia.Cod_Alumno 
     AND pa2.Cod_Proyecto IN (4, 5) 
     AND pa2.Nota = FALSE) AS total_finales_suspendidos,
  CASE 
    WHEN EXISTS (SELECT 1 
                 FROM Proyectos_Alumnos pa3 
                 WHERE pa3.Cod_Alumno = ia.Cod_Alumno 
                   AND pa3.Cod_Proyecto IN (4, 5) 
                   AND pa3.Nota = TRUE) 
    THEN 'Sí'
    ELSE 'No'
  END AS superó_algun_final
FROM iniciales_aprobados ia
JOIN finales_suspendidos fs ON ia.Cod_Alumno = fs.Cod_Alumno
ORDER BY total_finales_suspendidos DESC, ia.Nombre;
