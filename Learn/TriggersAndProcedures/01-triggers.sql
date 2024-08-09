/*
Clase 1 | Uso de triggers en MySQL
Este archivo contiene ejemplos para crear y utilizar triggers en MySQL.
*/
/*
Los triggers son procedimientos almacenados que se ejecutan automáticamente en respuesta a ciertos eventos en una tabla.
En MySQL, los triggers se pueden activar antes o después de insertar, actualizar o eliminar registros en una tabla.
*/

// Creaci�n de un trigger que se activa antes de insertar un registro en la tabla "empleados"
/*
Este trigger verifica si el salario es mayor que 0 antes de la inserci�n. Si no lo es, el trigger establece el salario a 30000.
*/
DELIMITER $$
CREATE TRIGGER before_insert_empleados
BEFORE INSERT ON empleados
FOR EACH ROW
BEGIN
    IF NEW.salario <= 0 THEN
        SET NEW.salario = 30000;
    END IF;
END $$
DELIMITER ;

// Creaci�n de un trigger que se activa despu�s de actualizar un registro en la tabla "empleados"
/*
Este trigger registra cambios en el salario de un empleado en una tabla "historial_salarios".
*/
DELIMITER $$
CREATE TRIGGER after_update_empleados
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
    IF NEW.salario <> OLD.salario THEN
        INSERT INTO historial_salarios(empleado_id, salario_anterior, salario_nuevo, fecha)
        VALUES (NEW.id, OLD.salario, NEW.salario, NOW());
    END IF;
END $$
DELIMITER ;

// Eliminaci�n de un trigger
DROP TRIGGER IF EXISTS before_insert_empleados;
