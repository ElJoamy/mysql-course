# Tipos de Datos en MySQL

- Los tipos de datos en MySQL se utilizan para definir el tipo de valor que puede almacenar un campo en una tabla.
- Cada tipo de dato tiene un rango de valores permitidos y un tamaño de almacenamiento asociado.
- MySQL proporciona una amplia variedad de tipos de datos para adaptarse a diferentes necesidades.
- Algunos tipos de datos comunes incluyen numéricos, fecha y hora, cadenas de texto, binarios, etc.
- Es importante elegir el tipo de dato correcto para cada campo para garantizar la integridad y eficiencia de los datos.

## Índice

Puedes ir directamente al tipo de dato que te interese:

0. [Lista Completa de Tipos de Datos en MySQL](#0-lista-completa-de-tipos-de-datos-en-mysql)
1. [Tipos Numéricos](#1-tipos-numéricos)
2. [Tipos de Fecha y Hora](#2-tipos-de-fecha-y-hora)
3. [Tipos de Cadenas de Texto](#3-tipos-de-cadenas-de-texto)
4. [Tipos Binarios](#4-tipos-binarios)
5. [Tipos Especiales](#5-tipos-especiales)
6. [Tipos Espaciales](#6-tipos-especiales)
7. [JSON](#7-json)


## 0. Lista Completa de Tipos de Datos en MySQL

### **Numéricos**:
- `TINYINT`
- `SMALLINT`
- `MEDIUMINT`
- `INT`
- `BIGINT`
- `DECIMAL`
- `NUMERIC`
- `FLOAT`
- `DOUBLE`
- `BIT`
- `BOOLEAN`

### **Fecha y Hora**:
- `DATE`
- `DATETIME`
- `TIMESTAMP`
- `TIME`
- `YEAR`

### **Cadenas de Texto**:
- `CHAR`
- `VARCHAR`
- `TEXT`
- `TINYTEXT`
- `MEDIUMTEXT`
- `LONGTEXT`

### **Binarios**:
- `BINARY`
- `VARBINARY`
- `BLOB`
- `TINYBLOB`
- `MEDIUMBLOB`
- `LONGBLOB`

### **Otros**:
- `ENUM`
- `SET`
- `JSON`
- `GEOMETRY`

## 1. Tipos Numéricos

### **TINYINT**
El tipo de dato `TINYINT` se usa para almacenar números enteros pequeños.

- **Con signo (por defecto)**: Rango de -128 a 127.
- **Sin signo (`UNSIGNED`)**: Rango de 0 a 255, ideal para cuando solo necesitas almacenar números positivos.

**Ejemplos:**
```sql
-- Con signo (permite negativos y positivos)
CREATE TABLE Usuarios (
    edad TINYINT
);

-- Sin signo (solo valores positivos)
CREATE TABLE Usuarios (
    edad TINYINT UNSIGNED
);
```

### **SMALLINT**
El tipo `SMALLINT` se usa para almacenar números enteros un poco más grandes que `TINYINT`.

- **Con signo**: Rango de -32,768 a 32,767.
- **Sin signo (`UNSIGNED`)**: Rango de 0 a 65,535.

**Ejemplos:**
```sql
-- Con signo
CREATE TABLE Ventas (
    cantidad SMALLINT
);

-- Sin signo
CREATE TABLE Ventas (
    cantidad SMALLINT UNSIGNED
);
```

### **MEDIUMINT**
Almacena números enteros más grandes que `SMALLINT` pero más pequeños que `INT`.

- **Con signo**: Rango de -8,388,608 a 8,388,607.
- **Sin signo (`UNSIGNED`)**: Rango de 0 a 16,777,215.

**Ejemplo:**
```sql
CREATE TABLE Productos (
    id MEDIUMINT UNSIGNED
);
```

### **INT**
El tipo de dato `INT` es uno de los más utilizados y almacena números enteros más grandes.

- **Con signo**: Rango de -2,147,483,648 a 2,147,483,647.
- **Sin signo (`UNSIGNED`)**: Rango de 0 a 4,294,967,295.

**Ejemplos:**
```sql
-- Con signo
CREATE TABLE Productos (
    stock INT
);

-- Sin signo
CREATE TABLE Productos (
    stock INT UNSIGNED
);
```

### **BIGINT**
El tipo `BIGINT` se utiliza para almacenar números muy grandes.

- **Con signo**: Rango de -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807.
- **Sin signo (`UNSIGNED`)**: Rango de 0 a 18,446,744,073,709,551,615.

**Ejemplos:**
```sql
-- Con signo
CREATE TABLE Finanzas (
    deuda BIGINT
);

-- Sin signo
CREATE TABLE Finanzas (
    deuda BIGINT UNSIGNED
);
```

### **DECIMAL**
El tipo `DECIMAL` almacena números decimales exactos y es ideal para valores como precios.

- **Formato**: `DECIMAL(m, d)`, donde `m` es el número total de dígitos y `d` es el número de dígitos decimales.

Ejemplo: `DECIMAL(6, 2)` almacena hasta 4 dígitos enteros y 2 decimales, como 1234.56.

**Ejemplo:**
```sql
CREATE TABLE Pagos (
    monto DECIMAL(10, 2)
);
```

### **NUMERIC**
`NUMERIC` es similar a `DECIMAL` y se usa para almacenar números decimales exactos.

- **Formato**: `NUMERIC(m, d)`, donde `m` es el número total de dígitos y `d` es el número de dígitos decimales.
- **Precisión máxima**: 65 dígitos.
- **Escala máxima**: 30 decimales.
- **Almacenamiento**: Depende de la precisión y escala.
- **Uso**: Para cálculos financieros y científicos que requieren precisión.

**Ejemplo:**
```sql
CREATE TABLE Precios (
    costo NUMERIC(8, 4)
);
```




### **FLOAT y DOUBLE**
Estos tipos de datos se usan para números con punto flotante, donde la precisión no es crítica.

- **FLOAT**: Para números de punto flotante de precisión simple. Puede almacenar valores como `123.4567` (con un total de 7 dígitos y 4 decimales).
  
- **DOUBLE**: Para números de punto flotante de doble precisión. Almacena valores más precisos como `12345678.12345678`.

**Ejemplos:**
```sql
CREATE TABLE Inversiones (
    interes FLOAT(7, 4),
    ganancia DOUBLE(15, 8)
);
```

**Nota**: Usa `FLOAT` cuando necesites menos precisión y prefieras un cálculo rápido. Usa `DOUBLE` para una mayor precisión en cálculos más complejos.


### **BIT**
Almacena valores binarios.

- Puede almacenar entre 1 y 64 bits.
- Se usa para almacenar banderas o indicadores.

**Ejemplo:**
```sql
CREATE TABLE Opciones (
    bandera BIT(1)
);
```

### **BOOLEAN o BOOL**
Es una variante de `TINYINT(1)` para almacenar valores de verdadero o falso. Se mapea a `TINYINT(1)` en MySQL, con 0 como `FALSE` y 1 como `TRUE`.
- **Valores válidos**: 0 para falso, 1 para verdadero.

**Ejemplo:**
```sql
CREATE TABLE Usuarios (
    activo BOOLEAN
);
```

## 2. Tipos de Fecha y Hora

### **DATE**
El tipo `DATE` almacena una fecha en el formato `YYYY-MM-DD`.

**Ejemplo:**
```sql
CREATE TABLE Empleados (
    fecha_contratacion DATE
);
```

### **DATETIME**
`DATETIME` almacena tanto la fecha como la hora en el formato `YYYY-MM-DD HH:MM:SS`.

**Ejemplo:**
```sql
CREATE TABLE Eventos (
    fecha_inicio DATETIME
);
```

### **TIMESTAMP**
`TIMESTAMP` almacena la fecha y hora actualizada automáticamente al modificar el registro. Ideal para llevar un control de cambios.

- **Formato**: `YYYY-MM-DD HH:MM:SS`.
- **Rango**: Desde '1970-01-01 00:00:01' UTC hasta '2038-01-19 03:14:07' UTC.

**Ejemplo:**
```sql
CREATE TABLE Registros (
    ultima_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

### **TIME**
`TIME` almacena solo la hora en el formato `HH:MM:SS`.

**Ejemplo:**
```sql
CREATE TABLE Turnos (
    hora_inicio TIME
);
```

### **YEAR**
Almacena solo el año en formato `YYYY`.

**Ejemplo:**
```sql
CREATE TABLE Historial (
    año YEAR
);
```

## 3. Tipos de Cadenas de Texto

### **CHAR**
`CHAR` almacena cadenas de longitud fija. Si la longitud real es menor a la especificada, se rellenan con espacios.

- **Longitud máxima**: 255 caracteres.

**Ejemplo:**
```sql
CREATE TABLE Productos (
    codigo CHAR(10)
);
```

### **VARCHAR**
`VARCHAR` almacena cadenas de longitud variable. Usa espacio solo para los caracteres almacenados.

- **Longitud máxima**: 65,535 caracteres.

**Ejemplo:**
```sql
CREATE TABLE Clientes (
    nombre VARCHAR(100)
);
```

### **TEXT** y sus variantes
`TEXT` y sus variantes (`TINYTEXT`, `MEDIUMTEXT`, `LONGTEXT`) se usan para grandes cantidades de texto.

- **TEXT**: Hasta 65,535 caracteres.
- **MEDIUMTEXT**: Hasta 16,777,215 caracteres.
- **LONGTEXT**: Hasta 4,294,967,295 caracteres.

**Ejemplo:**
```sql
CREATE TABLE Articulos (
    contenido TEXT
);
```

### **BLOB**
`BLOB` se usa para almacenar datos binarios (imágenes, videos, archivos).

- **BLOB**: Hasta 65,535 bytes.
- **MEDIUMBLOB**: Hasta 16,777,215 bytes.
- **LONGBLOB**: Hasta 4,294,967,295 bytes.

**Ejemplo:**
```sql
CREATE TABLE Archivos (
    contenido BLOB
);
```

### **ENUM**
`ENUM` permite almacenar un valor de una lista predefinida de opciones.

**Ejemplo:**
```sql
CREATE TABLE Usuarios (
    estado ENUM('Activo', 'Inactivo', 'Pendiente')
);
```

## 4. Tipos Binarios

### **BINARY**
Es similar a `CHAR`, pero almacena datos binarios. La longitud es fija.

**Ejemplo:**
```sql
CREATE TABLE Archivos (
    contenido BINARY(20)
);
```

### **VARBINARY**
Similar a `VARCHAR`, pero almacena datos binarios con una longitud variable.

**Ejemplo:**
```sql
CREATE TABLE Archivos (
    contenido VARBINARY(255)
);
```

## 5. Tipos Especiales

### **SET**
Permite almacenar uno o más valores de una lista predefinida de valores.
- **Valores válidos**: Uno o más valores de la lista.
- **Almacenamiento**: Se almacena como un número entero.
- **Uso**: Ideal para roles de usuario, permisos, etc.

**Ejemplo:**
```sql
CREATE TABLE Permisos (
    roles SET('admin', 'editor', 'viewer')
);
```

## 6. Tipos Espaciales

### **GEOMETRY**
Este tipo almacena datos geométricos como puntos, líneas o polígonos.

**Ejemplo:**
```sql
CREATE TABLE Mapas (
    area GEOMETRY
);
```

## 7. JSON

MySQL permite almacenar y consultar datos en formato JSON, útil para integrar con aplicaciones modernas.

**Ejemplo:**
```sql
CREATE TABLE Configuraciones (
    parametros JSON
);
```