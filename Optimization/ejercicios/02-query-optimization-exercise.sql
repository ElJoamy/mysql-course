/*
Clase 2 | Ejercicio: Optimización de consultas
*/

// 1. Usa EXPLAIN para analizar la siguiente consulta:

// 2. Crea un índice en la columna "salario" si crees que mejorará el rendimiento de la consulta.

// 3. Optimiza la siguiente consulta utilizando LIMIT para mejorar el rendimiento.
SELECT * FROM estudiantes WHERE promedio > 85 ORDER BY fecha_inscripcion;
/*
Sugerencia: Limita el resultado a los 10 primeros registros.
*/
