CREATE DATABASE sena;
 USE sena;
 CREATE TABLE aprendices(
id INT (20) UNIQUE PRIMARY KEY,
nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
correo VARCHAR(50) UNIQUE NOT NULL,
edad INT UNSIGNED NOT NULL,
direccion VARCHAR(20) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1234567812, "Valentina Rodriguez", "valen@gmail.com", 19, "crr-8 D", "Garzon", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1454567834, "Julian Espinoza", "juli@gmail.com", 18, "crr-9 A", "Gigante", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1004567833, "Viviana Ramos", "vivi@gmail.com", 20, "crr-10 B", "Garzon", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1034567822, "Paola Rivera", "pao@gmail.com", 21, "crr-11 C", "Florencia", "Inactivo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1204567832, "Camilo Martinez", "cami@gmail.com", 22, "crr-12 E", "Pitalito", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1004567835, "Andres Torres", "andres@gmail.com", 23, "crr-13 F", "suaza", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1274567866, "Laura Cifuentes", "lau@gmail.com", 24, "crr-14 G", "Timana", "Inactivo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1554567845, "Yuliana Ramirez", "yuli@gmail.com", 25, "crr-15 J", "Agrado", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1044567586, "Andrey Morales", "andrey@gmail.com", 26, "crr-16 K", "Pital", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1004567877, "Maria Vargas", "maria@gmail.com", 27, "crr-17 L", "Neiva", "Inactivo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1174567857, "Jhoana Bonilla", "jhoana@gmail.com", 28, "crr-18 M", "Hobo", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1184567897, "Greeicy Rendon", "greei@gmail.com", 29, "crr-19 N", "Bogota", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1064567887, "Juan Jimenez", "juan@gmail.com", 30, "crr-20 O", "Medellin", "Activo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1094567855, "Duvan Guzman", "duvan@gmail.com", 31, "crr-21 P", "Pereira", "Inactivo");
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado) VALUES (1444567888, "Natalia Trujillo", "nata@gmail.com", 32, "crr-22 Q", "Argentina", "Activo");

----<Devolver todas las filas correspondientes al id>
SELECT * FROM aprendices WHERE id = 1075678987;
 
----<Obtener el nombre y correo electronico del usuario de mayor edad>
SELECT * FROM aprendices ORDER BY edad;

---<Por Default el ordenamiento será ascendente, pero podemos especificar si es ascendente con ASC o descendente con DESC>
SELECT * FROM aprendices ORDER BY edad DESC;

-----<para obtener el nombre y correo electrónico del usuario de mayor edad,establecer unlimite para el primer registro
SELECT nombre_apellido, correo FROM aprendices ORDER BY edad DESC
LIMIT 1;

---<Debolver registros puede ser cualquiera, todos los q terminen en .com
SELECT * FROM aprendices WHERE correo LIKE ‘%.com’;


