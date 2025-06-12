CREATE SCHEMA mi_ejercicio;
USE mi_ejercicio;

CREATE TABLE IF NOT EXISTS empleadas (
	id_empleadas INT PRIMARY KEY AUTO_INCREMENT,
    salario FLOAT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    pais ENUM('españa','francia')
    );
    
CREATE TABLE IF NOT EXISTS personas2 (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK(edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);

CREATE TABLE IF NOT EXISTS empleadas2 (
	id_empleadas INT PRIMARY KEY AUTO_INCREMENT,
    salario FLOAT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    pais ENUM('españa','francia')
    );
    
CREATE TABLE IF NOT EXISTS empleadas_en_proyectos (
	id_empleadas INT AUTO_INCREMENT,
    id_proyecto INT NOT NULL,
    
    FOREIGN KEY(id_empleadas)
    REFERENCES empleadas2(id_empleadas)
    ON DELETE CASCADE    
    );
    
 CREATE TABLE IF NOT EXISTS customers  (
    id_customers INT NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    edad INT CHECK(edad > 18),
    ciudad VARCHAR(100) DEFAULT 'Madrid'
    
    );
    
 CREATE TABLE employees (
    id_employees INT NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    categoria ENUM('ADMINISTRATIVO', 'TECNICO', 'GERENTE'),
    salario INT UNSIGNED
    
    );
    
   -- DROP TABLE employees;
   
  
 CREATE TABLE employees2 (
    id_employees2 INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    categoria ENUM('ADMINISTRATIVO', 'TECNICO', 'GERENTE'),
    salario INT UNSIGNED,
    id_customers2 INT NOT NULL
    
    );
    
 CREATE TABLE IF NOT EXISTS customers2  (
    id_customers2 INT NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    edad INT CHECK(edad > 18),
    ciudad VARCHAR(100) DEFAULT 'Madrid',
    id_employee2 INT NOT NULL,
    
    FOREIGN KEY(id_employee2)
    REFERENCES employees2(id_employees2)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    
    );
    
   -- DROP TABLE employees2
   


    
    
    
    
    
    
    