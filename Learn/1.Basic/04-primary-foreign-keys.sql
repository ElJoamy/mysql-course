/*
Clase 4 | Claves Primarias y Foráneas en MySQL
Este archivo contiene ejemplos para trabajar con claves primarias y foráneas en MySQL.
*/

/*
Las claves primarias y foráneas son fundamentales para garantizar la integridad referencial de los datos en una base de datos relacional.
- La **clave primaria (PRIMARY KEY)** asegura que cada fila en la tabla sea única. Un valor de clave primaria no puede ser nulo.
- La **clave foránea (FOREIGN KEY)** crea una relación entre dos tablas y asegura que los datos de una tabla estén vinculados a registros válidos en otra tabla.
*/

/*
Ejemplo 1: Creación de la tabla "departamentos" con una clave primaria
- Aquí definimos la tabla "departamentos", donde la columna `id` es la clave primaria y se autoincrementa.
- Esta tabla será referenciada por la tabla "empleados" más adelante.
*/

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria auto-incrementable
    nombre VARCHAR(100) NOT NULL         -- Nombre del departamento
);

/*
Explicación:
- La columna `id` es la clave primaria de la tabla "departamentos". 
- `AUTO_INCREMENT` asegura que cada nuevo departamento tenga un identificador único y secuencial.
*/

/*
Ejemplo 2: Modificación de la tabla "empleados" para agregar una clave foránea
- Ahora vamos a modificar la tabla "empleados" para agregar una nueva columna `departamento_id` que se vinculará con la tabla "departamentos".
- La clave foránea `FOREIGN KEY` asegura que cada empleado pertenezca a un departamento válido.
*/

ALTER TABLE empleados
ADD COLUMN departamento_id INT,           -- Nueva columna para la clave foránea
ADD CONSTRAINT fk_departamento_empleado   -- Nombre de la clave foránea
FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

/*
Explicación:
- `ADD COLUMN` añade una nueva columna `departamento_id` a la tabla "empleados".
- `FOREIGN KEY (departamento_id) REFERENCES departamentos(id)` establece la relación entre "empleados" y "departamentos".
- La clave foránea asegura que cada valor en `departamento_id` corresponde a un `id` existente en la tabla "departamentos".
*/

/*
Ejemplo 3: Eliminación en cascada (ON DELETE CASCADE)
- La opción `ON DELETE CASCADE` permite que cuando se elimina un registro de la tabla "departamentos", automáticamente se eliminen los registros relacionados en la tabla "empleados".
- Esto garantiza que no haya empleados huérfanos, es decir, sin un departamento válido.
*/

ALTER TABLE empleados
ADD CONSTRAINT fk_departamento_empleado_cascade
FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
ON DELETE CASCADE;

/*
Explicación:
- `ON DELETE CASCADE` asegura que cuando se elimine un departamento, todos los empleados que pertenecen a ese departamento también se eliminen.
*/

/*
Ejemplo 4: Restricción ON UPDATE CASCADE
- Similar a `ON DELETE`, `ON UPDATE CASCADE` actualiza automáticamente las claves foráneas cuando se modifica la clave primaria de la tabla referenciada.
- Esto asegura que si se cambia el `id` de un departamento, la clave foránea en "empleados" se actualice en consecuencia.
*/

ALTER TABLE empleados
ADD CONSTRAINT fk_departamento_empleado_update
FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
ON UPDATE CASCADE;

/*
Explicación:
- `ON UPDATE CASCADE` garantiza que si el `id` de un departamento se cambia en "departamentos", ese cambio se refleje automáticamente en la columna `departamento_id` de la tabla "empleados".
*/

/*
Resumen:
1. Las claves primarias aseguran que cada registro en una tabla sea único.
2. Las claves foráneas establecen relaciones entre tablas, garantizando la integridad de los datos.
3. `ON DELETE CASCADE` y `ON UPDATE CASCADE` permiten que las modificaciones o eliminaciones en una tabla se reflejen automáticamente en las tablas relacionadas, manteniendo la coherencia de los datos.
4. Siempre es importante definir las claves foráneas correctamente para evitar inconsistencias en los datos relacionados.
*/

