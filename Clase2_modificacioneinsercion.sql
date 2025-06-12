# Ejercicio

CREATE SCHEMA IF NOT EXISTS mi_ejercicio;
USE mi_ejercicio;


CREATE TABLE IF NOT EXISTS tabla_1 (a INTEGER, b CHAR(10));

RENAME TABLE tabla_1 TO tabla_2;


ALTER TABLE tabla_2
MODIFY COLUMN a TINYINT NOT NULL;

ALTER TABLE tabla_2
CHANGE COLUMN b c VARCHAR(20);

ALTER TABLE tabla_2
ADD COLUMN d TIMESTAMP;

ALTER TABLE tabla_2
DROP COLUMN c;


-- copiar tabla , intento para copiar de una tabla que ya existe

CREATE TABLE tabla_3 AS SELECT * FROM tabla_2;

DROP TABLE tabla_2;

RENAME TABLE tabla_3 TO tabla_1;

---------------------------------

CREATE TABLE IF NOT EXISTS customers_mod 
SELECT * 
FROM customers;



CREATE TABLE IF NOT EXISTS customers_nueva
(customernumber INT, customername VARCHAR(50), contactlastname VARCHAR(50), contactfirstname VARCHAR(50), phone INT, addressline1 VARCHAR(50), addressline2 VARCHAR(50),
city VARCHAR(25), state VARCHAR(25), postalcode INT, country VARCHAR(30), salesrepemployeeNumber INT, creditlimit INT);

INSERT INTO customers_nueva
(customernumber, customername , contactlastname , contactfirstname , phone , addressline1 , addressline2,
city , state , postalcode , country , salesrepemployeeNumber , creditlimit) 
VALUES (343, 'Adalab','Rodriguez', 'Julia', 672986373, 'Calle Falsa 123', 'Puerta 42','Madrid', 'España', 28000, 'España', 15, 20000000);

SELECT * FROM customers_nueva;

INSERT INTO customers_nueva
(customernumber, customername , contactlastname , contactfirstname , phone , addressline1 , addressline2,
city , state , postalcode , country , salesrepemployeeNumber , creditlimit) 
VALUES (344, 'La pegatina After','Santiago', 'Maricarmen', 00000000, 'Travesía del rave', NULL ,'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453);


INSERT INTO customers_nueva
(customernumber, customername , contactlastname , contactfirstname , phone , addressline1 , addressline2,
city , state , postalcode , country , salesrepemployeeNumber , creditlimit) 
VALUES 
(345, NULL ,'GOMEZ', 'Mari', 1234, 'Travesía DE MARI', NULL ,'Palma de Mallorca', NULL, 07005, 'España', 10, 45673453),
(346, NULL ,'PEREZ', 'Pedro', 1234, 'Travesía DE MARI', NULL ,'Malaga', NULL, 07005, 'España', 10, 400000),
(347, NULL ,'PEREZ', 'Pedro', 1234, 'Travesía DE MARI', NULL ,'Malaga', NULL, 07005, 'España', 10, 400000),
(348, 'supernenas' ,'PEREZ', 'Pedro', 1234, 'Travesía DE MARI', NULL ,'Malaga', NULL, 07005, 'España', 10, 400000),
(349, 'catdog' ,'PEREZ', 'Pedro', 1234, 'Travesía DE MARI', NULL ,'Malaga', NULL, 07005, 'España', 10, 400000);


SELECT * FROM customers_nueva;


UPDATE 

/*
CustomerName 'La pegatina After' con la siguiente información.

    addressline1: Polígono Industrial de Son Castelló

    addressline2: Nave 92

    city: Palma de Mallorca

    state: España

    postalcode:28123

    country: España

    salesrepemployeenumber: 25

    creditlimit: 5000000
