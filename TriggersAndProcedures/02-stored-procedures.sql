/*
Clase 2 | Uso de stored procedures en MySQL
Este archivo contiene ejemplos para crear y utilizar stored procedures en MySQL.
*/
/*
Los stored procedures son procedimientos almacenados que contienen una o más instrucciones SQL. 
Los stored procedures se pueden llamar desde una aplicación o directamente desde la línea de comandos de MySQL.
Estos procedimientos pueden aceptar parámetros de entrada y devolver resultados.
*/

// Creaci�n de un stored procedure simple que inserta un nuevo empleado
DELIMITER $$
CREATE PROCEDURE insertar_empleado(IN nombre VARCHAR(100), IN puesto VARCHAR(50), IN salario DECIMAL(10, 2))
BEGIN
    INSERT INTO empleados (nombre, puesto, salario, fecha_contratacion)
    VALUES (nombre, puesto, salario, CURDATE());
END $$
DELIMITER ;

// Llamada al stored procedure para insertar un nuevo empleado
CALL insertar_empleado('Mar�a Garc�a', 'Desarrolladora', 55000);

// Creaci�n de un stored procedure que actualiza el salario de un empleado
DELIMITER $$
CREATE PROCEDURE actualizar_salario(IN empleado_id INT, IN nuevo_salario DECIMAL(10, 2))
BEGIN
    UPDATE empleados
    SET salario = nuevo_salario
    WHERE id = empleado_id;
END $$
DELIMITER ;

// Llamada al stored procedure para actualizar el salario de un empleado
CALL actualizar_salario(1, 60000);

// Eliminaci�n de un stored procedure
DROP PROCEDURE IF EXISTS insertar_empleado;
