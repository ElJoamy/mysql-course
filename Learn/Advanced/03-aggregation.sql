/*
Clase Avanzada 3 | Funciones de agregación y GROUP BY en MySQL
Este archivo contiene ejemplos para trabajar con funciones de agregación y GROUP BY.
*/
/*
Existen varias funciones de agregación en MySQL que permiten realizar cálculos sobre un conjunto de datos. 
Algunas de las funciones más comunes son:
- COUNT(): Cuenta el número de filas en un conjunto de datos.
- SUM(): Calcula la suma de los valores en un conjunto de datos.
- AVG(): Calcula el promedio de los valores en un conjunto de datos.
- MIN(): Encuentra el valor mínimo en un conjunto de datos.
- MAX(): Encuentra el valor máximo en un conjunto de datos.
*/

// Suma total de todas las órdenes
SELECT SUM(total) AS total_general FROM ordenes;

// Número de órdenes por cliente
SELECT cliente_id, COUNT(*) AS numero_ordenes
FROM ordenes
GROUP BY cliente_id;

// Monto total gastado por cliente
SELECT cliente_id, SUM(total) AS total_gastado
FROM ordenes
GROUP BY cliente_id
HAVING SUM(total) > 100;

// Promedio de gasto por orden
SELECT AVG(total) AS promedio_gasto
FROM ordenes;
