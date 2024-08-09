/*
Clase 2 | Uso combinado de tablas shadow con triggers en MySQL
Este archivo contiene ejemplos para automatizar el uso de tablas shadow utilizando triggers
*/
/*
Los triggers son objetos de la base de datos que se activan automáticamente en respuesta a ciertos eventos en una tabla.
Estos eventos pueden ser inserciones, actualizaciones o eliminaciones de registros en la tabla.
Los triggers se utilizan para realizar acciones específicas, como mantener un historial de cambios o validar datos antes de su inserción.
*/

DELIMITER $$
-- Trigger para inserciones en la tabla "empleados"
CREATE TRIGGER empleados_insert_audit
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO empleados_shadow (action, empleado_id, nombre, puesto, salario, fecha_contratacion, modificado_por, fecha_modificacion)
    VALUES ('INSERT', NEW.id, NEW.nombre, NEW.puesto, NEW.salario, NEW.fecha_contratacion, USER(), NOW());
END$$

-- Trigger para actualizaciones en la tabla "empleados"
CREATE TRIGGER empleados_update_audit
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO empleados_shadow (action, empleado_id, nombre, puesto, salario, fecha_contratacion, modificado_por, fecha_modificacion)
    VALUES ('UPDATE', NEW.id, NEW.nombre, NEW.puesto, NEW.salario, NEW.fecha_contratacion, USER(), NOW());
END$$

-- Trigger para eliminaciones en la tabla "empleados"
CREATE TRIGGER empleados_delete_audit
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
    INSERT INTO empleados_shadow (action, empleado_id, nombre, puesto, salario, fecha_contratacion, modificado_por, fecha_modificacion)
    VALUES ('DELETE', OLD.id, OLD.nombre, OLD.puesto, OLD.salario, OLD.fecha_contratacion, USER(), NOW());
END$$

DELIMITER ;

-- Stored Procedure para recuperar el historial de cambios de un empleado específico
DELIMITER $$
CREATE PROCEDURE obtener_historial_empleado(IN empleado_id INT)
BEGIN
    SELECT * FROM empleados_shadow
    WHERE empleado_id = empleado_id
    ORDER BY fecha_modificacion DESC;
END$$
DELIMITER ;

-- Ejemplo de llamada al stored procedure para obtener el historial de un empleado
CALL obtener_historial_empleado(1);
