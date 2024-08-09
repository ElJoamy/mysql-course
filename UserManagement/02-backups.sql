/*
Clase 2 | Creación y restauración de backups en MySQL
Este archivo contiene ejemplos para realizar backups y restaurarlos.
*/

/*
Los backups son copias de seguridad de una base de datos que se utilizan para restaurar la información en caso de pérdida de datos.
En MySQL, se pueden realizar backups utilizando la herramienta mysqldump desde la línea de comandos.
Normalmente una DB deberia estar alojada en un SO Linux, por lo que se asume que se esta trabajando en un entorno Linux.
*/

// Creación de un backup de la base de datos "mi_empresa"
// Nota: Esta operación generalmente se realiza desde la línea de comandos y no directamente en SQL.

-- mysqldump -u root -p mi_empresa > backup_mi_empresa.sql;
-- donde -u root es el usuario de la base de datos
-- -p es la opción para solicitar la contraseña
-- mi_empresa es el nombre de la base de datos

/*
Restauración de la base de datos desde un backup
Nota: Esta operación también se realiza desde la línea de comandos.
*/

-- mysql -u root -p mi_empresa < backup_mi_empresa.sql;
-- donde -u root es el usuario de la base de datos
-- -p es la opción para solicitar la contraseña
-- mi_empresa es el nombre de la base de datos
-- backup_mi_empresa.sql es el archivo de backup a restaurar

