/*
Clase 2 | Ejercicio: Uso combinado de tablas shadow con triggers
*/

// 1. Crea un trigger llamado "clientes_insert_audit" que se active después de cada inserción en la tabla "clientes" y guarde el registro en la tabla "clientes_shadow".

// 2. Crea un trigger llamado "clientes_update_audit" que se active después de cada actualización en la tabla "clientes" y guarde la versión anterior del registro en la tabla "clientes_shadow".

// 3. Crea un stored procedure llamado "eliminar_cliente_shadow" que reciba el ID de un cliente, elimine el registro de la tabla "clientes" y guarde una copia en la tabla "clientes_shadow".

// 4. Llama al stored procedure "eliminar_cliente_shadow" para eliminar un cliente específico y guardar una copia en la tabla shadow.

// 5. Crea un stored procedure llamado "obtener_historial_cliente" que reciba el ID de un cliente y devuelva el historial de modificaciones de ese cliente desde la tabla "clientes_shadow".

// 6. Llama al stored procedure "obtener_historial_cliente" para obtener el historial de un cliente específico.
