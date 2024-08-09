/*
Clase 1 | Uso de índices para optimización en MySQL
Este archivo contiene ejemplos para crear y utilizar índices para mejorar el rendimiento de las consultas.
*/
/*
Los índices en MySQL son estructuras que ayudan a acelerar la recuperación de datos en una tabla.
Estos índices se crean en columnas específicas de una tabla y permiten a la base de datos encontrar rápidamente los registros 
que coinciden con los criterios de búsqueda.
Pueden mejorar significativamente el rendimiento de las consultas, especialmente en tablas grandes.
*/


// Creación de un índice en la tabla "empleados" para la columna "nombre"
/*
El índice "idx_nombre" mejorará el rendimiento de las consultas que filtren o busquen datos en la columna "nombre".
*/
CREATE INDEX idx_nombre ON empleados(nombre);

// Creación de un índice único en la columna "correo_electronico" de la tabla "empleados"
/*
El índice único garantiza que no haya valores duplicados en la columna "correo_electronico".
*/
CREATE UNIQUE INDEX idx_correo_electronico ON empleados(correo_electronico);

// Creación de un índice compuesto en las columnas "apellido" y "nombre" en la tabla "empleados"
/*
El índice compuesto "idx_apellido_nombre" es útil para consultas que filtren por ambas columnas.
*/
CREATE INDEX idx_apellido_nombre ON empleados(apellido, nombre);

// Eliminación de un índice
/*
El índice "idx_nombre" ha sido eliminado.
*/
DROP INDEX idx_nombre ON empleados;