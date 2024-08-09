/*
Clase 4 | Claves primarias y foráneas en MySQL
Este archivo contiene ejemplos para trabajar con claves primarias y foráneas en MySQL.
*/

/*
En MySQL, las claves primarias y foráneas son restricciones que se utilizan para garantizar la integridad de los datos en una base de datos.
Estas sirven para establecer relaciones entre tablas y asegurar que los datos se mantengan consistentes.
*/

// Creación de la tabla "departamentos"
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

// Modificación de la tabla "empleados" para agregar una clave foránea
ALTER TABLE empleados
ADD COLUMN departamento_id INT,
ADD FOREIGN KEY (departamento_id) REFERENCES departamentos(id);
