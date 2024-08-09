/*
Clase 2 | Tipos de datos en MySQL
Este archivo contiene ejemplos para trabajar con diferentes tipos de datos en MySQL.
*/
/*
Los tipos de datos en MySQL se utilizan para definir el tipo de información que se almacenará en una columna de una tabla.
*/


// Modificación de la tabla "empleados" para agregar columnas con diferentes tipos de datos
ALTER TABLE empleados
ADD COLUMN salario FLOAT NOT NULL,
ADD COLUMN correo_electronico VARCHAR(255);
