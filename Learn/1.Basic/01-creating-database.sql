/*
Clase 1 | Creación de bases de datos y tablas
Este archivo contiene ejemplos para crear bases de datos y tablas en MySQL.
*/

/*
Ejemplo 1: Crear una base de datos para un sistema escolar
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS escuela;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "alumnos" incluirá un ID, nombre, grado y fecha de inscripción
*/

USE escuela;

CREATE TABLE alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL, /*  */
    grado VARCHAR(20),
    fecha_inscripcion DATE
);

------------------------------------------------------

/*
Ejemplo 2: Crear una base de datos para una tienda en línea
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS tienda_online;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "productos" incluirá un ID, nombre, precio y fecha de agregado
*/

USE tienda_online;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2),
    fecha_agregado DATE
);

------------------------------------------------------

/*
Ejemplo 3: Crear una base de datos para gestionar empleados de una empresa
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS empresa;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "empleados" incluirá un ID, nombre, departamento y fecha de contratación
*/

USE empresa;

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(50),
    fecha_contratacion DATE
);

------------------------------------------------------

/*
Ejemplo 4: Crear una base de datos para un hospital
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS hospital;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "pacientes" incluirá un ID, nombre, diagnóstico y fecha de ingreso
*/

USE hospital;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    diagnostico VARCHAR(255),
    fecha_ingreso DATE
);

------------------------------------------------------

/*
Ejemplo 5: Crear una base de datos para una librería
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS libreria;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "libros" incluirá un ID, título, autor y fecha de publicación
*/

USE libreria;

CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    fecha_publicacion DATE
);

------------------------------------------------------

/*
Ejemplo 6: Crear una base de datos para una agencia de viajes
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS agencia_viajes;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "destinos" incluirá un ID, nombre, país y precio
*/

USE agencia_viajes;

CREATE TABLE destinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    precio DECIMAL(10, 2)
);

------------------------------------------------------

/*
Ejemplo 7: Crear una base de datos para un gimnasio
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS gimnasio;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "miembros" incluirá un ID, nombre, tipo de membresía y fecha de registro
*/

USE gimnasio;

CREATE TABLE miembros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_membresia VARCHAR(50),
    fecha_registro DATE
);

------------------------------------------------------

/*
Ejemplo 8: Crear una base de datos para un banco
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS banco;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "clientes" incluirá un ID, nombre, tipo de cuenta y saldo
*/

USE banco;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_cuenta VARCHAR(50),
    saldo DECIMAL(15, 2)
);

------------------------------------------------------

/*
Ejemplo 9: Crear una base de datos para un restaurante
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS restaurante;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "platos" incluirá un ID, nombre, tipo de comida y precio
*/

USE restaurante;

CREATE TABLE platos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_comida VARCHAR(50),
    precio DECIMAL(10, 2)
);

------------------------------------------------------

/*
Ejemplo 10: Crear una base de datos para una universidad
*/

// Creación de una base de datos
CREATE DATABASE IF NOT EXISTS universidad;

/*
Uso de la base de datos creada y creación de una tabla básica
La tabla "profesores" incluirá un ID, nombre, departamento y fecha de contratación
*/

USE universidad;

CREATE TABLE profesores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento VARCHAR(50),
    fecha_contratacion DATE
);
