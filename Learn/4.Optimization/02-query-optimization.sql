/*
Clase 2 | Optimización de consultas en MySQL
Este archivo contiene ejemplos de cómo optimizar consultas para mejorar el rendimiento.
*/
/*
La optimización de consultas en MySQL es un proceso que implica mejorar la eficiencia de las consultas 
para que se ejecuten más rápidamente y utilicen menos recursos del sistema.
Mientras mas eficientes sean las consultas, mejor será el rendimiento de la base de datos.
*/


// Consulta sin optimizar que realiza un escaneo completo de la tabla "ordenes"
SELECT * FROM ordenes WHERE total > 100;

/*
Para optimizar esta consulta, se puede crear un índice en la columna "total" para evitar el escaneo completo de la tabla.
*/
CREATE INDEX idx_total ON ordenes(total);

-- Consulta optimizada usando el índice
SELECT * FROM ordenes WHERE total > 100;

/*
El índice "idx_total" permite que esta consulta sea más rápida, ya que MySQL utiliza el índice en lugar de escanear toda la tabla.
*/

// Uso de EXPLAIN para analizar el plan de ejecución de una consulta
/*
EXPLAIN muestra cómo MySQL ejecutará la consulta, lo que puede ayudar a identificar problemas de rendimiento.
*/
EXPLAIN SELECT * FROM ordenes WHERE total > 100;

// Uso de LIMIT para reducir el número de registros procesados
/*
El uso de LIMIT puede mejorar el rendimiento al limitar el número de filas que MySQL necesita procesar y devolver.
*/
SELECT * FROM ordenes WHERE total > 100 ORDER BY fecha LIMIT 10;
