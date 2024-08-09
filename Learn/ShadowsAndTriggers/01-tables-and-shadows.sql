/*
Clase 1 | Creaci�n de tablas shadow en MySQL
Este archivo contiene ejemplos para crear tablas shadow que almacenan copias de registros antes de ser modificados o eliminados.
*/
/*
Las tablas shadow son tablas que almacenan informacion sobre versiones anteriores de registros en una tabla principal.
Estas tablas se utilizan para mantener un historial de cambios y facilitar la recuperacion de datos en caso de errores.
*/

// Creacion de la tabla principal "empleados"
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    fecha_contratacion DATE
);

// Creacion de la tabla shadow "empleados_shadow" para almacenar versiones anteriores de registros
CREATE TABLE empleados_shadow (
    shadow_id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(10) NOT NULL,
    empleado_id INT NOT NULL,
    nombre VARCHAR(100),
    puesto VARCHAR(50),
    salario DECIMAL(10, 2),
    fecha_contratacion DATE,
    modificado_por VARCHAR(255) NOT NULL,
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*
La tabla "empleados_shadow" almacena los registros anteriores de la tabla "empleados" junto con informacion adicional:
- "shadow_id": identificador unico de la tabla shadow
- "action": tipo de accion realizada (INSERT, UPDATE, DELETE, etc.)
- "empleado_id": identificador del empleado en la tabla principal
- "nombre": nombre del empleado
- "puesto": puesto del empleado
- "salario": salario del empleado
- "fecha_contratacion": fecha de contratacion del empleado
- "modificado_por": usuario que realizo la modificacion
- "fecha_modificacion": fecha y hora de la modificacion
*/
