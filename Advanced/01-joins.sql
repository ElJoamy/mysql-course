/*
Clase Avanzada 1 | Uso de JOIN y tipos de JOIN
Este archivo contiene ejemplos para trabajar con diferentes tipos de JOIN en MySQL.
*/
/*
Existen varios tipos de JOIN en MySQL, como INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL JOIN.
Pero tambien existen otros tipos de JOIN menos comunes como CROSS JOIN y SELF JOIN.
*/

// Creación de tablas "clientes" y "ordenes"
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE ordenes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

// Inserción de datos en ambas tablas
INSERT INTO clientes (nombre) VALUES ('Carlos'), ('Ana'), ('Luis');

INSERT INTO ordenes (cliente_id, fecha, total) 
VALUES (1, '2024-08-01', 100.50), (2, '2024-08-02', 200.75), (1, '2024-08-03', 50.00);

// INNER JOIN para combinar clientes y sus órdenes
SELECT clientes.nombre, ordenes.fecha, ordenes.total
FROM clientes
INNER JOIN ordenes ON clientes.id = ordenes.cliente_id;

// LEFT JOIN para incluir clientes sin órdenes
SELECT clientes.nombre, ordenes.fecha, ordenes.total
FROM clientes
LEFT JOIN ordenes ON clientes.id = ordenes.cliente_id;

// RIGHT JOIN para incluir órdenes sin clientes (aunque raro en este contexto)
SELECT clientes.nombre, ordenes.fecha, ordenes.total
FROM clientes
RIGHT JOIN ordenes ON clientes.id = ordenes.cliente_id;

// CROSS JOIN para combinar todas las filas de ambas tablas
SELECT clientes.nombre, ordenes.fecha, ordenes.total
FROM clientes
CROSS JOIN ordenes;

// SELF JOIN para combinar filas de la misma tabla
SELECT c1.nombre AS cliente, c2.nombre AS referencia
FROM clientes c1
JOIN clientes c2 ON c1.id <> c2.id;