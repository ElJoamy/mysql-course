/*
Clase Avanzada 2 | Subconsultas en MySQL
Este archivo contiene ejemplos para trabajar con subconsultas en MySQL.
*/
/*
Las subconsultas son consultas anidadas dentro de una consulta principal.
*/

// Subconsulta en la cláusula SELECT
SELECT nombre, (SELECT COUNT(*) FROM ordenes WHERE cliente_id = clientes.id) AS numero_ordenes
FROM clientes;

// Subconsulta en la cláusula FROM
SELECT sub.nombre, sub.total_gastado
FROM (
    SELECT clientes.nombre, SUM(ordenes.total) AS total_gastado
    FROM clientes
    INNER JOIN ordenes ON clientes.id = ordenes.cliente_id
    GROUP BY clientes.nombre
) AS sub
WHERE sub.total_gastado > 100;

// Subconsulta en la cláusula WHERE
SELECT nombre
FROM clientes
WHERE id IN (SELECT cliente_id FROM ordenes WHERE total > 150);
