# Sentencias SQL en MySQL

- Las sentencias SQL son comandos que se utilizan para interactuar con una base de datos.
- MySQL es un sistema de gestión de bases de datos relacional que utiliza SQL como lenguaje de consulta.
- En este documento, se presentan las sentencias SQL más comunes en MySQL con ejemplos y explicaciones.

## Indice

0. [Lista de Sentencias SQL en MySQL](#0-lista-de-sentencias-sql-en-mysql)
1. [SELECT](#1-select)
2. [DISTINCT](#2-distinct)
3. [WHERE](#3-where)
4. [AND y OR](#4-and-y-or)
5. [ORDER BY](#5-order-by)
6. [INSERT](#6-insert)
7. [UPDATE](#7-update)
8. [DELETE](#8-delete)
9. [ALTER TABLE](#9-alter-table)
10. [JOIN](#10-join)
11. [GROUP BY](#11-group-by)
12. [HAVING](#12-having)
13. [LIMIT](#13-limit)
14. [CREATE TABLE](#14-create-table)
15. [DROP TABLE](#15-drop-table)
16. [TRUNCATE](#16-truncate)
17. [CREATE DATABASE](#17-create-database)
18. [DROP DATABASE](#18-drop-database)
19. [ALTER DATABASE](#19-alter-database)


## 0. Lista de Sentencias SQL en MySQL
1. **SELECT**: Consulta datos.
2. **DISTINCT**: Elimina duplicados.
3. **WHERE**: Establece condiciones.
4. **AND / OR**: Combina condiciones.
5. **ORDER BY**: Ordena los resultados.
6. **INSERT**: Inserta datos.
7. **UPDATE**: Actualiza datos.
8. **DELETE**: Elimina datos.
9. **ALTER TABLE**: Modifica la estructura de una tabla.
10. **JOIN**: Combina filas de varias tablas.
11. **GROUP BY**: Agrupa datos.
12. **HAVING**: Filtra grupos.
13. **LIMIT**: Limita el número de resultados.
14. **CREATE TABLE**: Crea una tabla.
15. **DROP TABLE**: Elimina una tabla.
16. **TRUNCATE**: Borra todos los registros de una tabla.
17. **CREATE DATABASE**: Crea una base de datos.
18. **DROP DATABASE**: Elimina una base de datos.
19. **ALTER DATABASE**: Modifica una base de datos.

## 1. SELECT
`SELECT` se utiliza para consultar datos de una tabla.

**Ejemplo**:
```sql
SELECT * FROM empleados;
```
Explicación: Devuelve todos los registros y todas las columnas de la tabla "empleados".

## 2. DISTINCT
`DISTINCT` elimina los duplicados en los resultados de una consulta.

**Ejemplo**:
```sql
SELECT DISTINCT puesto FROM empleados;
```
Explicación: Devuelve una lista de los puestos sin duplicados en la tabla "empleados".

## 3. WHERE
`WHERE` se usa para establecer condiciones en una consulta.

**Ejemplo**:
```sql
SELECT * FROM empleados WHERE salario > 40000;
```
Explicación: Muestra todos los empleados cuyo salario es mayor a 40,000.

## 4. AND y OR
`AND` y `OR` permiten combinar múltiples condiciones en una consulta.

**Ejemplo**:
```sql
SELECT * FROM empleados 
WHERE salario > 40000 AND puesto = 'Gerente';
```
Explicación: Muestra todos los empleados que son gerentes y ganan más de 40,000.

## 5. ORDER BY
`ORDER BY` ordena los resultados de una consulta en orden ascendente (`ASC`) o descendente (`DESC`).

**Ejemplo**:
```sql
SELECT * FROM empleados 
ORDER BY salario DESC;
```
Explicación: Muestra todos los empleados ordenados por salario, de mayor a menor.

## 6. INSERT
`INSERT` se utiliza para agregar nuevos registros a una tabla.

**Ejemplo**:
```sql
INSERT INTO empleados (nombre, puesto, salario, correo_electronico) 
VALUES ('Ana Sánchez', 'Desarrolladora', 45000, 'ana.sanchez@miempresa.com');
```
Explicación: Inserta un nuevo empleado en la tabla "empleados".

## 7. UPDATE
`UPDATE` actualiza los datos existentes en una tabla.

**Ejemplo**:
```sql
UPDATE empleados 
SET salario = 55000 
WHERE id = 1;
```
Explicación: Actualiza el salario del empleado con `id = 1` a 55,000.

## 8. DELETE
`DELETE` se utiliza para eliminar uno o más registros de una tabla.

**Ejemplo**:
```sql
DELETE FROM empleados 
WHERE id = 3;
```
Explicación: Elimina el empleado con `id = 3` de la tabla.

## 9. ALTER TABLE
`ALTER TABLE` modifica la estructura de una tabla, como añadir o eliminar columnas.

**Ejemplo**:
```sql
ALTER TABLE empleados 
ADD COLUMN fecha_ingreso DATE;
```
Explicación: Añade una columna `fecha_ingreso` a la tabla "empleados".

## 10. JOIN
`JOIN` combina filas de dos o más tablas basadas en una relación entre ellas.

**Ejemplo**:
```sql
SELECT empleados.nombre, proveedores.nombre AS proveedor
FROM empleados
JOIN proveedores ON empleados.proveedor_id = proveedores.id;
```
Explicación: Combina las tablas `empleados` y `proveedores` y muestra los nombres de los empleados y sus proveedores correspondientes.

## 11. GROUP BY
`GROUP BY` agrupa filas que tienen valores idénticos en las columnas especificadas y se utiliza a menudo con funciones de agregación (`SUM`, `COUNT`, etc.).

**Ejemplo**:
```sql
SELECT puesto, COUNT(*) 
FROM empleados 
GROUP BY puesto;
```
Explicación: Agrupa los empleados por su puesto y cuenta cuántos empleados hay en cada puesto.

## 12. HAVING
`HAVING` filtra los resultados después de una operación `GROUP BY`.

**Ejemplo**:
```sql
SELECT puesto, COUNT(*) 
FROM empleados 
GROUP BY puesto 
HAVING COUNT(*) > 2;
```
Explicación: Muestra solo aquellos puestos que tienen más de 2 empleados.

## 13. LIMIT
`LIMIT` restringe el número de filas devueltas por una consulta.

**Ejemplo**:
```sql
SELECT * FROM empleados 
LIMIT 5;
```
Explicación: Muestra solo los primeros 5 empleados de la tabla.

## 14. CREATE TABLE
`CREATE TABLE` crea una nueva tabla en la base de datos.

**Ejemplo**:
```sql
CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
```
Explicación: Crea una nueva tabla llamada "departamentos" con un `id` auto-incrementable y un nombre.

## 15. DROP TABLE
`DROP TABLE` elimina una tabla de la base de datos.

**Ejemplo**:
```sql
DROP TABLE departamentos;
```
Explicación: Elimina la tabla "departamentos" de la base de datos.

## 16. TRUNCATE
`TRUNCATE` elimina todos los registros de una tabla, pero mantiene su estructura.

**Ejemplo**:
```sql
TRUNCATE TABLE empleados;
```
Explicación: Borra todos los datos de la tabla "empleados", pero deja la tabla intacta.

## 17. CREATE DATABASE
`CREATE DATABASE` crea una nueva base de datos.

**Ejemplo**:
```sql
CREATE DATABASE mi_empresa;
```
Explicación: Crea una nueva base de datos llamada "mi_empresa".

## 18. DROP DATABASE
`DROP DATABASE` elimina una base de datos por completo.

**Ejemplo**:
```sql
DROP DATABASE mi_empresa;
```
Explicación: Elimina la base de datos "mi_empresa".

## 19. ALTER DATABASE
`ALTER DATABASE` modifica las características de una base de datos existente.

**Ejemplo**:
```sql
ALTER DATABASE mi_empresa CHARACTER SET utf8;
```
Explicación: Cambia el conjunto de caracteres de la base de datos "mi_empresa" a UTF-8.