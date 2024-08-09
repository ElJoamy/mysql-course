/*
Clase 1 | Creación de bases de datos y tablas
Este archivo contiene ejemplos para crear bases de datos y tablas en MySQL.
*/
/*
Crear una base de datos y una tabla básica en MySQL es una tarea fundamental al trabajar con este sistema de gestión de bases de datos.
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS mi_empresa;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "empleados" incluirá un ID, nombre, puesto y fecha de contratación
*/

USE mi_empresa;

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(50),
    fecha_contratacion DATE
);
