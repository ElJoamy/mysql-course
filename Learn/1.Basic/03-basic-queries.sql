/*
Clase 3 | Operaciones básicas en MySQL
Este archivo contiene ejemplos para insertar, seleccionar, actualizar y eliminar datos en MySQL, también conocidas como operaciones CRUD (Create, Read, Update, Delete).
Estas operaciones son fundamentales para interactuar con los datos almacenados en una base de datos.
*/

/*
Operación 1: Inserción de datos (CREATE)
La inserción de nuevos registros en una tabla se realiza con la sentencia `INSERT INTO`.
Aquí vamos a insertar tres empleados en la tabla "empleados" con los siguientes campos:
  - nombre: El nombre del empleado.
  - puesto: El puesto que ocupa el empleado en la empresa.
  - fecha_contratacion: Fecha en la que fue contratado el empleado.
  - salario: El salario del empleado.
  - correo_electronico: Correo electrónico del empleado.
*/

INSERT INTO empleados (nombre, puesto, fecha_contratacion, salario, correo_electronico) 
VALUES 
('Juan Pérez', 'Gerente', '2020-01-15', 50000, 'juan.perez@miempresa.com'),
('María López', 'Contadora', '2021-03-10', 40000, 'maria.lopez@miempresa.com'),
('Carlos Martínez', 'Desarrollador', '2022-07-01', 30000, 'carlos.martinez@miempresa.com');

/*
Explicación:
- `INSERT INTO` permite agregar nuevos registros a una tabla.
- `VALUES` especifica los datos que queremos insertar, en el mismo orden que las columnas de la tabla.
*/

/*
Operación 2: Selección de datos (READ)
La selección de registros de una tabla se realiza con la sentencia `SELECT`. Aquí estamos consultando todos los registros de la tabla "empleados".
*/

SELECT * FROM empleados;

/*
Explicación:
- El símbolo `*` selecciona todas las columnas de la tabla.
- Si solo necesitas algunas columnas, puedes especificarlas de la siguiente manera: 
  SELECT nombre, puesto FROM empleados;
*/

/*
Operación 3: Actualización de datos (UPDATE)
La actualización de un registro existente se realiza con la sentencia `UPDATE`. Vamos a actualizar el puesto del empleado con `id = 1` (Juan Pérez) a "Director".
*/

UPDATE empleados 
SET puesto = 'Director' 
WHERE id = 1;

/*
Explicación:
- `SET` especifica qué columnas y valores deben actualizarse.
- La cláusula `WHERE` es crucial para identificar qué registro se actualizará. Sin el `WHERE`, todos los registros de la tabla serían actualizados.
*/

/*
Operación 4: Eliminación de datos (DELETE)
La eliminación de un registro de una tabla se realiza con la sentencia `DELETE`. En este caso, vamos a eliminar el registro del empleado con `id = 3` (Carlos Martínez).
*/

DELETE FROM empleados 
WHERE id = 3;

/*
Explicación:
- `DELETE FROM` elimina uno o más registros de una tabla.
- La cláusula `WHERE` es importante para especificar qué registro debe ser eliminado. Si no se utiliza `WHERE`, todos los registros de la tabla serán eliminados.
*/

/*
Extras: Otras Sentencias Útiles

1. `ORDER BY`: Para ordenar los resultados de una consulta. Ejemplo:
   SELECT * FROM empleados ORDER BY salario DESC;  -- Ordena a los empleados por salario, de mayor a menor.

2. `LIMIT`: Para limitar el número de resultados devueltos por una consulta. Ejemplo:
   SELECT * FROM empleados LIMIT 5;  -- Devuelve solo los primeros 5 empleados.

3. `ALTER TABLE`: Para modificar la estructura de una tabla (agregar o eliminar columnas). Ejemplo:
   ALTER TABLE empleados ADD COLUMN telefono VARCHAR(15);  -- Agrega una nueva columna para almacenar el teléfono.
*/

