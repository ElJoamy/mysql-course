/*
Clase 2 | Tipos de datos en MySQL
Este archivo contiene ejemplos para trabajar con diferentes tipos de datos en MySQL.
*/

/*
Los tipos de datos en MySQL se utilizan para definir el tipo de información que se almacenará en una columna de una tabla.
Aquí exploramos diferentes tipos de datos y cómo aplicarlos correctamente.
*/

/* 
Ejemplo 1: Tipos de Datos Numéricos
Vamos a crear una tabla 'productos' con varios tipos de datos numéricos como INT, DECIMAL, y FLOAT.
*/

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Entero auto-incrementable, ideal para identificadores únicos.
    nombre VARCHAR(100) NOT NULL,       -- Cadena de texto con un límite de 100 caracteres.
    precio DECIMAL(10, 2),              -- Número decimal con 10 dígitos totales y 2 decimales (por ejemplo, precios).
    stock SMALLINT UNSIGNED,            -- Entero pequeño sin signo, útil para cantidades.
    peso FLOAT(5, 2),                   -- Número en punto flotante, ideal para valores como peso o dimensiones.
    fecha_ingreso DATE NOT NULL         -- Fecha en formato YYYY-MM-DD.
);

/*
Ejemplo 2: Tipos de Datos de Texto
En este ejemplo, agregamos campos para cadenas de texto cortas y largas.
*/

ALTER TABLE productos
ADD COLUMN descripcion TEXT,             -- Texto largo, útil para descripciones o notas.
ADD COLUMN codigo CHAR(10);              -- Cadena de longitud fija de 10 caracteres, útil para códigos de productos.

/*
Ejemplo 3: Tipos de Datos de Fecha y Hora
En este ejemplo, vamos a manejar fechas y horas para seguimiento de cambios.
*/

ALTER TABLE productos
ADD COLUMN ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;  -- Fecha y hora que se actualiza automáticamente.

/*
Explicación: 
TIMESTAMP es ideal para seguir cuándo se hicieron modificaciones a una fila. Se actualiza automáticamente cada vez que se actualiza la fila.
*/

/*
Ejemplo 4: Tipos de Datos Booleanos
Añadimos un campo que representa un estado verdadero o falso.
*/

ALTER TABLE productos
ADD COLUMN activo BOOLEAN DEFAULT TRUE;  -- Valor booleano, ideal para marcar si un producto está activo o inactivo.

/*
Explicación: 
BOOLEAN en MySQL se mapea internamente como TINYINT(1), donde 0 representa FALSE y 1 representa TRUE.
*/

/*
Ejemplo 5: Tipos de Datos Binarios
Vamos a agregar un campo para almacenar archivos o imágenes en formato binario.
*/

ALTER TABLE productos
ADD COLUMN imagen BLOB;                  -- Almacena datos binarios, como imágenes o archivos en formato binario.

/*
Explicación:
BLOB (Binary Large Object) es útil cuando necesitas almacenar grandes cantidades de datos binarios, como imágenes o documentos.
*/

/*
Resumen:
- INT: Enteros, pueden ser SIGNED o UNSIGNED.
- DECIMAL: Ideal para valores monetarios o de alta precisión.
- FLOAT: Para valores de punto flotante donde la precisión no es crítica.
- VARCHAR y CHAR: Cadenas de texto, VARCHAR es de longitud variable y CHAR de longitud fija.
- DATE y TIMESTAMP: Para almacenar fechas y horas.
- BOOLEAN: Para almacenar valores verdaderos o falsos (internamente es TINYINT).
- BLOB: Para almacenar datos binarios.
*/