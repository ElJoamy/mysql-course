/*
Clase 2 | Ejercicio: Tipos de Datos

Ejercicio 1: Nivel Básico
1. Crea una tabla llamada "productos" que almacene información básica de los productos. Define los siguientes campos:
   - id: tipo entero, será la clave primaria y debe ser auto incrementable (ideal para identificadores únicos).
   - nombre: tipo cadena de texto, debe permitir hasta un máximo de 100 caracteres y no debe ser nulo.
   - precio: tipo número decimal con dos lugares decimales, ideal para precios de productos.
   - fecha_ingreso: tipo fecha, debe almacenar la fecha de ingreso del producto y no debe ser nulo.

Piensa en el uso correcto de los tipos de datos para cada uno de estos campos.
*/

/*
Ejercicio 2: Nivel Intermedio
1. Ahora, modifica la tabla "productos" para añadir un campo adicional:
   - descripcion: tipo texto largo, útil para almacenar descripciones detalladas de los productos.

Recuerda elegir el tipo de dato adecuado para textos largos.
*/

/*
Ejercicio 3: Nivel Avanzado
1. Crea una nueva tabla llamada "proveedores" que almacenará información de los proveedores. Define los siguientes campos:
   - id: tipo entero, será la clave primaria y debe ser auto incrementable.
   - nombre: tipo cadena de texto, máximo 100 caracteres, no nulo.
   - telefono: debe almacenar un número de teléfono, asegúrate de que el tipo de dato permita almacenar hasta 15 caracteres.

Piensa en el tipo de dato más adecuado para cada campo.
*/

/*
Ejercicio 4: Nivel Experto
1. Modifica la tabla "productos" para añadir una relación con los proveedores. Para esto, añade un nuevo campo:
   - proveedor_id: este campo será una clave foránea que debe referenciar la tabla "proveedores".
   Además, asegúrate de crear la clave foránea que enlace con la tabla "proveedores".

Reflexiona sobre cómo se crean relaciones entre tablas en MySQL y cuál es el tipo de dato más adecuado para las claves foráneas.
*/
