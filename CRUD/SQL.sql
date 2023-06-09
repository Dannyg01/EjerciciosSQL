
-- * CREATE DATABASE (para crear una nueva base de datos)

CREATE DATABASE <db>;
-- * SHOW DATABASE (para visualizar las bases de datos creadas)

SHOW DATABASES;
-- * USE (para hacer uso de una base de datos especifica)
USE <db>;
-- * SHOW TABLES (para visualizar las tablas creadas en la base de datos usada)
SHOW TABLES;

-- CREATE TABLE (sirve para crear una tabla)
CREATE TABLE aprendices(
    id INT,
    nombre_usuario VARCHAR (50),
    correo VARCHAR(50),
    edad INT,
    estado ENUM('Activo', 'Inactivo'),
    intereses TEXT,
    creado TIMESTAMP
);
-- eliminar tabla - DROP TABLE <nameTable>
DROP TABLE estudiantes;

CREATE TABLE aprendices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) UNIQUE NOT NULL,
    correo VARCHAR(50),
    edad INT UNSIGNED NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT "Inactivo",
    intereses TEXT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- UNSERT INTO <tableName> ('columna1','columna2','columna3',...)
-- VALUES (valorColumna1,valorColumna2, valorColumna3,...)
INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses) 
VALUES ('Juan', 'juan@gmail.com', 21, 1, 'jugar');

-- SELECT * FROM <nametable> (realicemos una consulta para recuperar los datos ingresados en la tabla aprendices)