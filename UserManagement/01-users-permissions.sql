/*
Clase 1 | Creación de usuarios y gestión de permisos en MySQL
Este archivo contiene ejemplos para crear usuarios y asignarles diferentes niveles de permisos.
*/

/*
Existen diferentes niveles de permisos que se pueden asignar a los usuarios en MySQL. 
Esta es una lista de permisos de MySQL:

    - SELECT: Ver datos.
    - INSERT: Añadir nuevos datos.
    - UPDATE: Modificar datos.
    - DELETE: Borrar datos.
    - CREATE: Crear tablas/bases.
    - ALTER: Modificar estructuras.
    - DROP: Borrar tablas/bases.
    - GRANT: Dar permisos.
    - REVOKE: Quitar permisos.
    - ALL PRIVILEGES: Todos los permisos.
*/

// Creación de un nuevo usuario con permisos básicos
/*
El usuario "usuario_basico" solo puede realizar operaciones SELECT en la base de datos "mi_empresa".
*/
CREATE USER 'usuario_basico'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT ON mi_empresa.* TO 'usuario_basico'@'localhost';

// Creacion de un nuevo usuario con permisos de escritura, lectura y eliminación
/*
El usuario "usuario_completo" puede realizar operaciones SELECT, INSERT, UPDATE y DELETE en la base de datos "mi_empresa".
*/
CREATE USER 'usuario_completo'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT, UPDATE, DELETE ON mi_empresa.* TO 'usuario_completo'@'localhost';

// Creación de un usuario con permisos administrativos
/*
El usuario "admin_usuario" tiene todos los permisos en la base de datos "mi_empresa".
*/
CREATE USER 'admin_usuario'@'localhost' IDENTIFIED BY 'adminpass';

GRANT ALL PRIVILEGES ON mi_empresa.* TO 'admin_usuario'@'localhost';


// Revocación de permisos y eliminación de un usuario
/*
Revocamos todos los permisos del usuario "usuario_basico" y luego lo eliminamos.
*/
REVOKE ALL PRIVILEGES ON mi_empresa.* FROM 'usuario_basico'@'localhost';

DROP USER 'usuario_basico'@'localhost';

// Dar permisos para una base de datos específica y tablas específicas
/*
El usuario "usuario_tablas" tiene permisos SELECT, INSERT y UPDATE en la base de datos "mi_empresa" y solo en las tablas "empleados" y "productos".
*/
CREATE USER 'usuario_tablas'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT, UPDATE ON mi_empresa.empleados TO 'usuario_tablas'@'localhost';
GRANT SELECT, INSERT, UPDATE ON mi_empresa.productos TO 'usuario_tablas'@'localhost';

