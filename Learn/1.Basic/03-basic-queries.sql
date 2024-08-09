/*
Clase 3 | Operaciones básicas en MySQL
Este archivo contiene ejemplos para insertar, seleccionar, actualizar y eliminar datos en MySQL.
*/
/*
Las operaciones básicas en MySQL son fundamentales para interactuar con los datos almacenados en una base de datos.
Estas operaciones incluyen la inserción, selección, actualización y eliminación de registros en las tablas.
*/


// Inserción de datos en la tabla "empleados"
INSERT INTO empleados (nombre, puesto, fecha_contratacion, salario, correo_electronico) 
VALUES 
('Juan Pérez', 'Gerente', '2020-01-15', 50000, 'juan.perez@miempresa.com'),
('María López', 'Contadora', '2021-03-10', 40000, 'maria.lopez@miempresa.com'),
('Carlos Martínez', 'Desarrollador', '2022-07-01', 30000, 'carlos.martinez@miempresa.com');

// Selección de todos los registros en la tabla "empleados"
SELECT * FROM empleados;

// Actualización de datos en la tabla "empleados"
UPDATE empleados 
SET puesto = 'Director' 
WHERE id = 1;

// Eliminación de un registro en la tabla "empleados"
DELETE FROM empleados 
WHERE id = 3;
