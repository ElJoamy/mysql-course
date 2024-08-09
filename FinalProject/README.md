# Definición del Proyecto Final: Database Implementation
## Objetivo
El objetivo del proyecto es diseñar, implementar y optimizar una base de datos completa para la gestión integral de un sistema educativo. Esta base de datos deberá ser capaz de manejar no solo la información básica de estudiantes, profesores y materias, sino también aspectos avanzados como la planificación de horarios, la gestión de actividades extracurriculares, y la integración de un sistema de auditoría y seguridad robusto. Este proyecto también servirá como una pieza central de tu portafolio profesional, demostrando tus habilidades y conocimientos para aspirar a un rol de Database Administrator (DBA).

## Especificaciones del Proyecto
### Diseño y Creación de la Base de Datos
1. **Desde Cero:**
   - Deberás crear una base de datos llamada `sistema_educativo_db`.
   - **Tablas Requeridas:** La base de datos debe contener al menos 10 tablas iniciales, que incluyan pero no se limiten a las siguientes:
     - `grados` (GradoID, Nivel): Gestiona los grados o cursos.
     - `materias` (MateriaID, Nombre, Descripción): Gestiona las materias o asignaturas.
     - `estudiantes` (EstudianteID, Nombre, Apellido, GradoID, FechaNacimiento, Dirección, ContactoEmergencia): Almacena los datos personales y académicos de los estudiantes.
     - `profesores` (ProfesorID, Nombre, Apellido, MateriaID, FechaContratacion, Salario, ContactoEmergencia): Almacena los datos personales y laborales de los profesores.
     - `inscripciones` (InscripcionID, EstudianteID, MateriaID, FechaInscripcion): Registra las inscripciones de estudiantes en las materias.
     - `notas` (NotaID, EstudianteID, MateriaID, Nota, FechaEvaluacion, TipoEvaluacion): Registra las notas de los estudiantes en las diferentes evaluaciones.
     - `asistencias` (AsistenciaID, EstudianteID, MateriaID, Fecha, Estado, Justificación): Registra las asistencias de los estudiantes.
     - `actividades` (ActividadID, Nombre, Descripción, Fecha, ResponsableID): Gestiona actividades extracurriculares como talleres, clubes, eventos, etc.
     - `inscripciones_actividades` (InscripcionActividadID, EstudianteID, ActividadID, FechaInscripcion): Registra la participación de estudiantes en actividades extracurriculares.
     - `horarios` (HorarioID, MateriaID, ProfesorID, Dia, HoraInicio, HoraFin, Aula): Gestiona los horarios de las materias, incluyendo la asignación de aulas.

   - **Relaciones Complejas:**
     - Implementa relaciones uno a muchos (1:N) y muchos a muchos (N:M) donde sea necesario.
     - Asegúrate de definir correctamente las claves primarias y foráneas, y de establecer las relaciones entre las tablas.

2. **Tablas Shadow:**
   - Además de las 10 tablas iniciales, deberás implementar al menos 5 tablas shadow que se encarguen de almacenar versiones anteriores de los registros en tablas críticas, tales como `estudiantes`, `profesores`, `notas`, `inscripciones`, y `actividades`.
   - Las tablas shadow deben registrar todos los cambios importantes, como inserciones, actualizaciones y eliminaciones, mediante triggers que se ejecuten automáticamente.

### Operaciones Básicas
3. **Inserción de Datos:**
   - Inserta datos iniciales en cada tabla por lo menos 20 registros en cada tabla, para probar la funcionalidad de la base de datos.
   - Realiza operaciones de actualización y eliminación para probar las restricciones de integridad.
   - Asegúrate de manejar adecuadamente las relaciones entre las tablas al insertar datos.

### Consultas Avanzadas
4. **JOINs y Subconsultas Complejas:**
   - Crea consultas que relacionen estudiantes con sus notas, profesores con sus materias, horarios con las inscripciones, y estudiantes con sus actividades extracurriculares.
   - Crea subconsultas que devuelvan los estudiantes con el mejor promedio por materia y aquellos que han faltado más de tres veces en un mes.

5. **Funciones de Agregación y Vistas Complejas:**
   - Crea consultas que calculen el promedio de notas por estudiante, por materia y por grado.
   - Implementa vistas que faciliten la consulta de datos complejos, como una vista que muestre el desempeño académico de cada grado, incluyendo promedios de notas, asistencia, y participación en actividades.

### Gestión de Usuarios y Seguridad
6. **Definición de Roles y Permisos:**
   - Define varios roles de usuario en el sistema, tales como:
     - **Administrador:** Acceso completo a todas las tablas y funcionalidades.
     - **Profesor:** Acceso limitado a la gestión de materias, notas, y asistencia.
     - **Estudiante:** Acceso solo a sus propias notas, asistencia y actividades inscritas.
     - **Auditor:** Acceso solo a los registros de auditoría y reportes.

7. **Implementación de Auditoría:**
   - Crea tablas de auditoría para registrar las operaciones CRUD (Crear, Leer, Actualizar, Eliminar) realizadas en las tablas clave (`estudiantes`, `notas`, `inscripciones`, etc.).
   - Implementa triggers que registren automáticamente cada operación en la tabla de auditoría correspondiente, incluyendo la fecha, la acción realizada, y el usuario que la ejecutó.

8. **Backups y Recuperación:**
   - Crea un plan de backup automatizado para la base de datos. Puedes utilizar herramientas integradas de MySQL o scripts personalizados para realizar copias de seguridad diarias o semanales. `(OPCONAL)` puedes probar con python para automatizar este proceso.
   - Realiza una simulación de restauración desde un backup para asegurar que el sistema puede recuperarse de fallos.

### Optimización
9. **Índices y Particionamiento:**
   - Crea índices en las tablas donde sea necesario para mejorar el rendimiento de las consultas.
   - Implementa particionamiento en tablas grandes para mejorar el rendimiento y la gestión de la base de datos.

10. **Optimización de Consultas:**
    - Analiza y optimiza las consultas más complejas, utilizando técnicas como la reescritura de consultas, el uso de índices, y el ajuste de configuraciones de MySQL.
    - Documenta los resultados de las optimizaciones realizadas, mostrando la mejora en el rendimiento.

11. **Mantenimiento y Monitoreo:**
    - Realiza tareas de mantenimiento de la base de datos, como la reorganización de índices, limpieza de datos, y optimización de tablas.
    - Implementa monitoreo básico de la base de datos, utilizando herramientas integradas de MySQL o scripts personalizados para alertar sobre problemas de rendimiento o seguridad.

### Triggers y Procedimientos Almacenados
12. **Triggers Avanzados:**
    - Crea triggers complejos que manejen operaciones como la actualización automática del estado de un estudiante según su desempeño, o la notificación de bajas asistencias.
    - Implementa triggers que aseguren la integridad referencial y lógica entre las tablas, como evitar la eliminación de un estudiante si tiene notas registradas.

13. **Procedimientos Almacenados Complejos:**
    - Implementa procedimientos almacenados para tareas avanzadas, como la generación de reportes automáticos de desempeño académico, la actualización masiva de datos, o la asignación automatizada de horarios.

### Tablas Shadow y Auditoría
14. **Implementación de Tablas Shadow:**
    - Implementa tablas shadow para las tablas `estudiantes`, `profesores`, `notas`, `inscripciones`, y `actividades`, que registren cualquier modificación o eliminación en sus registros.
    - Asegúrate de que los triggers manejen las tablas shadow correctamente, guardando un historial detallado de los cambios realizados.

15. **Auditoría Avanzada:**
    - Implementa un sistema de auditoría que registre todas las operaciones CRUD en tablas críticas, incluyendo los detalles de cada operación y el usuario responsable.
    - Integra esta auditoría con los procedimientos almacenados y triggers para asegurar que todas las acciones están debidamente registradas.

## Entrega
- **Formato de entrega:** Un archivo SQL (`01-project-implementation.sql`) que contenga todos los scripts necesarios para implementar, probar, y validar la base de datos, separado por secciones y con comentarios explicativos, así como un archivo de documentación (`Docs.md`) que describa el diseño, la implementación, y las pruebas realizadas, si es posible con capturas de pantalla, gifs de demostración y ejemplos de código. No olvides incluir el diagrama ER de la base de datos.

## Extras
### Auditoría Centralizada
Implementa una tabla de auditoría centralizada llamada `audit_log`, donde se registren todos los cambios realizados en las tablas shadow que hayas creado. Esta tabla debe almacenar información detallada sobre cada operación realizada, incluyendo la acción, la tabla afectada, el campo clave primario, el valor del campo clave, detalles de la acción, el usuario que realizó la modificación y la fecha de la modificación.

#### Especificaciones de la Tabla `audit_log`:
- `log_id`: Clave primaria autoincremental para cada registro en la auditoría.
- `action`: Tipo de acción realizada (por ejemplo, `Insert`, `Update`, `Delete`).
- `table_name`: Nombre de la tabla en la que se realizó la operación.
- `primary_key_field`: Nombre del campo clave primaria de la tabla afectada.
- `primary_key_value`: Valor del campo clave primaria que identifica el registro afectado.
- `action_details`: Detalles de la acción realizada, incluyendo el contenido modificado.
- `modified_by`: Usuario que realizó la acción.
- `modified_date`: Fecha y hora en que se realizó la acción.

#### Implementación:
1. **Crear la Tabla `audit_log`:** Deberás crear la tabla `audit_log` en tu base de datos siguiendo las especificaciones anteriores.
  
2. **Desarrollo de Triggers:** Para cada tabla shadow que hayas implementado (`estudiantes_shadow`, `profesores_shadow`, etc.), crea triggers que inserten un registro en `audit_log` cada vez que se realice una operación (inserción, actualización o eliminación).

3. **Captura de Información:** Asegúrate de capturar toda la información necesaria para que se pueda realizar un seguimiento detallado de los cambios en los registros de la base de datos.

### Replicación Maestro-Esclavo
1. **Configuración de la Replicación:**
    - Configura una replicación maestro-esclavo avanzada para tu base de datos, asegurando que los datos se repliquen correctamente entre el maestro y los esclavos.
    - Implementa mecanismos de failover y recuperación automática en caso de falla del servidor maestro.

2. **Pruebas de Alta Disponibilidad:**
    - Realiza pruebas para asegurar que el sistema de replicación maestro-esclavo soporta fallos y se recupera adecuadamente, manteniendo la disponibilidad de la base de datos.

3. **Ayuda Adicional:**
    - Puedes consultar la documentación oficial de MySQL para obtener más información sobre la configuración de la replicación maestro-esclavo y las mejores prácticas para la alta disponibilidad, asi como tambien puedes ver el siguiente [repositorio](https://github.com/ElJoamy/Docker_compose_comfiguration.git) para ver un ejemplo de como configurar un maestro y un esclavo.

### Notas:
- **Importancia del Requisito:** Aunque estos requisitos son opcionales, implementarlos es altamente recomendable. La auditoría centralizada es fundamental para garantizar un seguimiento eficiente de cualquier cambio en los datos críticos de tu sistema, lo que mejora significativamente la seguridad y la trazabilidad de las operaciones realizadas.
  
- **Desarrollo de Habilidades:** La implementación de estos extras te permitirá aplicar y reforzar los conceptos aprendidos durante el curso. Aunque no se proporcionan ejemplos de código específicos, se espera que utilices tu comprensión de triggers, procedimientos almacenados, y replicación maestro-esclavo para desarrollar estas funcionalidades de manera autónoma. Esto demostrará tu capacidad para abordar desafíos complejos en la administración de bases de datos.

- **Valor Añadido al Proyecto:** La integración de una auditoría centralizada y la replicación maestro-esclavo no solo enriquecerá la funcionalidad y seguridad de tu sistema educativo, sino que también añadirá un valor significativo a tu portafolio profesional. Estos elementos reflejan prácticas avanzadas y altamente valoradas en la industria, mostrando que estás preparado para manejar escenarios reales y exigentes como Database Administrator (DBA).

¡Buena suerte y feliz aprendizaje!
