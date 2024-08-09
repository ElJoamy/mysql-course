# Curso Completo de MySQL - Guía Práctica

¡Bienvenido al **Curso Completo de MySQL**! Este repositorio está diseñado para ayudarte a dominar las habilidades esenciales necesarias para convertirte en un Administrador de Bases de Datos (DBA) competente. A lo largo de este curso, construirás y optimizarás un sistema de gestión educativa completamente funcional, el cual podrás utilizar como parte central de tu portafolio profesional.

## 📚 Contenido del Curso

El curso está dividido en varios módulos, cada uno enfocado en diferentes aspectos de la administración de bases de datos MySQL. Comenzarás con los conceptos básicos y avanzarás progresivamente hacia temas más complejos, incluyendo triggers, procedimientos almacenados, optimización y replicación.

### 1. Conceptos Básicos
- **01-creating-database.sql**: Aprende a crear una base de datos y sus tablas.
- **02-data-types.sql**: Comprende los diferentes tipos de datos en MySQL.
- **03-basic-queries.sql**: Realiza operaciones básicas como INSERT, SELECT, UPDATE y DELETE.
- **04-primary-foreign-keys.sql**: Implementa claves primarias y foráneas para gestionar las relaciones entre tablas.

[Ejercicios del Módulo](./Basic/ejercicios)

### 2. Consultas Avanzadas
- **01-joins.sql**: Aprende sobre las operaciones JOIN y sus tipos.
- **02-subqueries.sql**: Entiende cómo utilizar subconsultas.
- **03-aggregation.sql**: Trabaja con funciones de agregación y GROUP BY.

[Ejercicios del Módulo](./Advanced/ejercicios)

### 3. Gestión de Usuarios y Seguridad
- **01-users-permissions.sql**: Crea usuarios y gestiona permisos.
- **02-backups.sql**: Aprende a crear y restaurar backups.

[Ejercicios del Módulo](./UserManagement/ejercicios)

### 4. Optimización y Mantenimiento
- **01-indexes.sql**: Optimiza tu base de datos utilizando índices.
- **02-query-optimization.sql**: Técnicas para optimizar consultas.
- **03-database-maintenance.sql**: Mejores prácticas para el mantenimiento de bases de datos.

[Ejercicios del Módulo](./Optimization/ejercicios)

### 5. Triggers y Procedimientos Almacenados
- **01-triggers.sql**: Implementa triggers para acciones automáticas.
- **02-stored-procedures.sql**: Aprende a crear y utilizar procedimientos almacenados.

[Ejercicios del Módulo](./TriggersAndProcedures/ejercicios)

### 6. Tablas Shadow y Triggers
- **01-tables-and-shadows.sql**: Implementa tablas shadow para versionado de datos.
- **02-shadows-with-trigger.sql**: Combina tablas shadow con triggers para una gestión avanzada de datos.

[Ejercicios del Módulo](./ShadowsAndTriggers/ejercicios)

### 7. Proyecto Final
- **01-project-implementation.sql**: Implementa un sistema completo de gestión educativa.
- **Docs.md**: Documentación que describe el diseño, la implementación y las pruebas del proyecto.

[Detalles del Proyecto Final](./FinalProject)

## 🚀 Extras

### Auditoría Centralizada
Implementa una tabla de auditoría centralizada llamada `audit_log`, donde se registren todos los cambios realizados en las tablas shadow que hayas creado. Esta tabla debe almacenar información detallada sobre cada operación realizada, incluyendo la acción, la tabla afectada, el campo clave primario, el valor del campo clave, detalles de la acción, el usuario que realizó la modificación y la fecha de la modificación.

### Replicación Maestro-Esclavo
Configura una replicación maestro-esclavo avanzada para tu base de datos, asegurando que los datos se repliquen correctamente entre el maestro y los esclavos. Implementa mecanismos de failover y recuperación automática en caso de falla del servidor maestro.

Para obtener ayuda adicional, puedes consultar la [documentación oficial de MySQL](https://dev.mysql.com/doc/refman/8.0/en/replication.html) o revisar este [repositorio](https://github.com/ElJoamy/Docker_compose_comfiguration.git) para ver un ejemplo de cómo configurar un maestro y un esclavo.

## 🛠️ Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/ElJoamy/MySQL-Course.git
   ```

2. Navega al directorio del proyecto:
   ```bash
   cd MySQL-Course
   ```

3. Importa los scripts SQL en tu servidor MySQL para comenzar a practicar.

## 👨‍💻 Sobre Mí

- **GitHub:** [ElJoamy](https://github.com/ElJoamy)
- **LinkedIn:** [Joamy Salguero](https://www.linkedin.com/in/joamy5902/)
- **Instagram:** [@joseph_joamy](https://www.instagram.com/joseph_joamy/)

---

Este curso y proyecto están diseñados para proporcionarte una comprensión integral de la administración de bases de datos MySQL. Al completar el proyecto final, tendrás una demostración digna de tu portafolio que muestra tus habilidades como Administrador de Bases de Datos (DBA). ¡Feliz aprendizaje!

---

Este README.md está estructurado en español, alineado con el estilo del ejemplo que proporcionaste, y con tus datos personales y la estructura de tu proyecto de curso de MySQL.