# Conceptos Fundamentales de MySQL

## 1. ¿Qué es MySQL?
MySQL es un sistema de gestión de bases de datos relacional (RDBMS) basado en SQL (Structured Query Language). Es uno de los sistemas de bases de datos más populares en el mundo, utilizado en una amplia gama de aplicaciones, desde sitios web pequeños hasta grandes sistemas corporativos.

## 2. Normalización de Bases de Datos

### 2.1 Primera Forma Normal (1FN)
- **Descripción:** Una tabla está en 1FN si todos los atributos son atómicos, es decir, los datos son indivisibles. No debe haber variación en el número de columnas, y los campos no clave deben identificarse por la clave principal.
- **Objetivo:** Eliminar valores repetidos y asegurar que los datos estén organizados de manera básica.
- **Ejemplo:**
  ```sql
  -- Tabla que no cumple con 1FN (valores no atómicos)
  CREATE TABLE Empleados (
      ID INT,
      Nombre VARCHAR(100),
      Telefono VARCHAR(100) -- Aquí se almacenan múltiples números en un solo campo
  );

  -- Tabla que cumple con 1FN (valores atómicos)
  CREATE TABLE Empleados (
      ID INT,
      Nombre VARCHAR(100),
      Telefono VARCHAR(20) -- Cada número de teléfono se almacena en un campo separado
  );
  ```

### 2.2 Segunda Forma Normal (2FN)
- **Descripción:** Una tabla está en 2FN si está en 1FN y todos los atributos no clave dependen completamente de la clave principal. Esto elimina las dependencias parciales.
- **Objetivo:** Asegurar que cada dato depende completamente de la clave principal, eliminando redundancias.
- **Ejemplo:**
    ```sql
    -- Tabla que no cumple con 2FN (dependencia parcial)
    CREATE TABLE Proyectos (
        EmpleadoID INT,
        ProyectoID INT,
        NombreEmpleado VARCHAR(100), -- Depende solo de EmpleadoID
        HorasTrabajadas INT
    );

    -- Tabla que cumple con 2FN (sin dependencia parcial)
    CREATE TABLE Empleados (
        EmpleadoID INT PRIMARY KEY,
        NombreEmpleado VARCHAR(100)
    );

    CREATE TABLE Proyectos (
        ProyectoID INT PRIMARY KEY,
        EmpleadoID INT,
        HorasTrabajadas INT,
        FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
    );
    ```

### 2.3 Tercera Forma Normal (3FN)
- **Descripción:** Una tabla está en 3FN si está en 2FN y no existe ninguna dependencia funcional transitiva en los atributos que no son clave.
- **Objetivo:** Eliminar dependencias transitivas para reducir la redundancia.
- **Ejemplo:**
    ```sql
    -- Tabla que no cumple con 3FN (dependencia transitiva)
    CREATE TABLE Departamentos (
        ID INT,
        NombreDepartamento VARCHAR(100),
        IDGerente INT, -- Depende de IDDepartamento
        NombreGerente VARCHAR(100) -- Depende de IDGerente
    );

    -- Tablas que cumplen con 3FN (sin dependencia transitiva)
    CREATE TABLE Departamentos (
        ID INT PRIMARY KEY,
        NombreDepartamento VARCHAR(100),
        IDGerente INT
    );

    CREATE TABLE Gerentes (
        IDGerente INT PRIMARY KEY,
        NombreGerente VARCHAR(100)
    );
    ```

### 2.4 Forma Normal de Boyce-Codd (FNBC)
- **Descripción:** La FNBC es una versión más estricta de la 3FN, donde cada determinante (un atributo que determina completamente a otro) debe ser una clave candidata.
- **Objetivo:** Asegurar que cada dependencia funcional en una tabla es necesaria y evita redundancias complejas.
- **Ejemplo:**
    ```sql
    -- Tabla que no cumple con FNBC
    CREATE TABLE Cursos (
        ProfesorID INT,
        CursoID INT,
        ProfesorNombre VARCHAR(100), -- ProfesorNombre depende de ProfesorID
        CursoNombre VARCHAR(100) -- CursoNombre depende de CursoID
    );

    -- Tablas que cumplen con FNBC
    CREATE TABLE Profesores (
        ProfesorID INT PRIMARY KEY,
        ProfesorNombre VARCHAR(100)
    );

    CREATE TABLE Cursos (
        CursoID INT PRIMARY KEY,
        CursoNombre VARCHAR(100),
        ProfesorID INT,
        FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
    );
    ```

### 2.5 Cuarta Forma Normal (4FN)
- **Descripción:** Una tabla está en 4FN si para cada una de sus dependencias multivaluadas no funcionales, la clave es una superclave.
- **Objetivo:** Evitar redundancias relacionadas con dependencias multivaluadas.
- **Ejempli:**
    ```sql
    -- Tabla que no cumple con 4FN (dependencias multivaluadas)
    CREATE TABLE Asignaciones (
        ProfesorID INT,
        CursoID INT,
        Horario VARCHAR(50)
    );

    -- Tablas que cumplen con 4FN (separando dependencias multivaluadas)
    CREATE TABLE Profesores (
        ProfesorID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Cursos (
        CursoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Horarios (
        HorarioID INT PRIMARY KEY,
        CursoID INT,
        ProfesorID INT,
        Hora VARCHAR(50),
        FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
        FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
    );
    ```

### 2.6 Quinta Forma Normal (5FN)
- **Descripción:** Una tabla está en 5FN si está en 4FN y no existen dependencias de reunión no triviales que no se generen desde las claves.
- **Objetivo:** Asegurar que las relaciones en la base de datos no generen tuplas espurias y mantener la integridad de las relaciones.
- **Ejemplo:**
    ```sql
    -- Tabla que no cumple con 5FN (relaciones de reunión no triviales)
    CREATE TABLE Contratos (
        EmpresaID INT,
        ProveedorID INT,
        ProductoID INT,
        Cantidad INT
    );

    -- Tablas que cumplen con 5FN (separando dependencias de reunión)
    CREATE TABLE Empresas (
        EmpresaID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Proveedores (
        ProveedorID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Productos (
        ProductoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Contratos (
        EmpresaID INT,
        ProveedorID INT,
        ProductoID INT,
        Cantidad INT,
        PRIMARY KEY (EmpresaID, ProveedorID, ProductoID),
        FOREIGN KEY (EmpresaID) REFERENCES Empresas(EmpresaID),
        FOREIGN KEY (ProveedorID) REFERENCES Proveedores(ProveedorID),
        FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
    );
    ```

### ¿Hasta qué Forma Normal Es Recomendable?
- **Recomendación General:** La **Tercera Forma Normal (3FN)** suele ser suficiente para la mayoría de las aplicaciones, ya que ofrece un buen equilibrio entre rendimiento y eliminación de redundancias. Las formas normales más avanzadas (FNBC, 4FN, 5FN) son útiles en casos más específicos donde se requiere una optimización extrema de la base de datos.

## 3. Relaciones en Bases de Datos

### 3.1 Relaciones Uno a Uno (1:1)
Cada registro en una tabla está vinculado a un solo registro en otra tabla.
- **Ejemplo:**
    ```sql
    CREATE TABLE Empleados (
        EmpleadoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE DetallesEmpleados (
        EmpleadoID INT PRIMARY KEY,
        Direccion VARCHAR(100),
        Telefono VARCHAR(20),
        FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
    );
    ```
    Un empleado tiene un solo conjunto de detalles (dirección, teléfono), y cada conjunto de detalles pertenece a un solo empleado.

### 3.2 Relaciones Uno a Muchos (1:N)
Un registro en una tabla está vinculado a múltiples registros en otra tabla.
- **Ejemplo:**
    ```sql
    CREATE TABLE Departamentos (
        DepartamentoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Empleados (
        EmpleadoID INT PRIMARY KEY,
        Nombre VARCHAR(100),
        DepartamentoID INT,
        FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
    );
    ```
    Un departamento puede tener varios empleados, pero cada empleado pertenece a un solo departamento.


### 3.3 Relaciones Muchos a Muchos (N:M)
Múltiples registros en una tabla están vinculados a múltiples registros en otra tabla. Esto generalmente se implementa usando una tabla intermedia.
- **Ejemplo:**
    ```sql
    CREATE TABLE Estudiantes (
        EstudianteID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Cursos (
        CursoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );

    CREATE TABLE Inscripciones (
        EstudianteID INT,
        CursoID INT,
        PRIMARY KEY (EstudianteID, CursoID),
        FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
        FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
    );
    ```
    Un estudiante puede inscribirse en varios cursos, y un curso puede tener varios estudiantes inscritos.

## 4. Llaves en Bases de Datos
### 4.1 Clave Primaria
- **Descripción:** Una clave primaria es un campo o conjunto de campos que identifica de forma única cada registro en una tabla.
- **Características:**
    - Debe contener valores únicos.
    - No puede contener valores nulos.
    - Puede consistir en uno o varios campos.
- **Ejemplo:**
    ```sql
    CREATE TABLE Empleados (
        EmpleadoID INT PRIMARY KEY,
        Nombre VARCHAR(100)
    );
    ```
    En esta tabla, `EmpleadoID` es la clave primaria que identifica de forma única a cada empleado.

### 4.2 Clave Foránea
- **Descripción:** Una clave foránea es un campo en una tabla que se relaciona con la clave primaria de otra tabla.
- **Propósito:** Establecer relaciones entre tablas y garantizar la integridad referencial.
- **Ejemplo:**
    ```sql
    CREATE TABLE Empleados (
        EmpleadoID INT PRIMARY KEY,
        Nombre VARCHAR(100),
        DepartamentoID INT,
        FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
    );
    ```
    En esta tabla, `DepartamentoID` es una clave foránea que se relaciona con la clave primaria `DepartamentoID` de la tabla `Departamentos`.

## 5. Replicación en MySQL
La replicación en MySQL es el proceso de copiar datos de una base de datos en un servidor (maestro) a una o más bases de datos en otros servidores (esclavos). Este proceso es útil para mejorar la disponibilidad de los datos y distribuir la carga de trabajo.
- **Ejemplo:**
    ```sql
    # Configuración básica de replicación maestro-esclavo
    [mysqld]
    server-id=1
    log-bin=mysql-bin

    # Configuración en el servidor esclavo
    [mysqld]
    server-id=2
    replicate-do-db=nombre_de_tu_base_de_datos
    ```

## 6. Auditorías en MySQL
Las auditorías permiten registrar y monitorear las actividades que se realizan en la base de datos. En MySQL, se pueden configurar auditorías para rastrear operaciones como la creación, modificación y eliminación de datos, lo que es crucial para la seguridad y cumplimiento normativo.

## 7. Recomendaciones de Normalización
- **3FN:** Es generalmente la forma normal recomendada para la mayoría de los proyectos, ya que equilibra la eliminación de redundancias con un buen rendimiento.
- **FNBC, 4FN, 5FN:** Considera estas formas normales en escenarios donde se requiere una optimización específica o cuando se trabaja con estructuras de datos extremadamente complejas.

