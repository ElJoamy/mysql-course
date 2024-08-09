/*
Clase 3 | Mantenimiento de bases de datos en MySQL
Este archivo contiene ejemplos de operaciones de mantenimiento que ayudan a optimizar y mantener la salud de las bases de datos.
*/
/* 
El mantenimiento de bases de datos en MySQL es una tarea importante para garantizar el rendimiento y la integridad de los datos.
Esto incluye operaciones como la optimización de tablas, la reparación de tablas y la verificación de la integridad de las tablas.
*/


// Análisis y optimización de tablas
/*
ANALYZE TABLE actualiza las estadísticas de las tablas para ayudar al optimizador de consultas de MySQL a elegir los mejores índices.
*/
ANALYZE TABLE empleados;

/*
OPTIMIZE TABLE reorganiza la tabla para reducir el espacio en disco y mejorar la eficiencia de las consultas.
*/
OPTIMIZE TABLE empleados;

// Reparación de tablas
/*
REPAIR TABLE repara posibles corrupciones en la tabla "empleados".
*/

REPAIR TABLE empleados;

// Verificación de la integridad de una tabla
/*
CHECK TABLE verifica la integridad de la tabla "empleados" para identificar posibles problemas.
*/
CHECK TABLE empleados;