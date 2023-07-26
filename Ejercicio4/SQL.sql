
-----<para buscar todos los departamentos que comienzan con las letras "Va". 
SELECT * FROM Oficinas WHERE Departamento LIKE 'Va%';
---<El símbolo '%' representa cualquier número de caracteres que pueda seguir después de las letras "Va".

---<Mostrar los Id cuyo código está entre el 2 y el 9:
SELECT Id_oficina FROM Oficinas WHERE Id_oficina BETWEEN 2 AND 3;


SELECT Id_oficina, Departamento FROM Oficinas WHERE Id_oficina BETWEEN 2 AND 3;








CREATE TABLE Titulada(
    id INT (20) UNIQUE PRIMARY KEY,
    nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
    correo VARCHAR(50) UNIQUE NOT NULL,
    edad INT UNSIGNED NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
    formación ENUM('Técnico', 'Tecnólogo') DEFAULT'Tecnologo',
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP);


INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación)


INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1234567812, "Valentina Rodriguez", "valen@gmail.com", 19, "crr-8 D", "Garzon", "Inactivo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1454567834, "Julian Espinoza", "juli@gmail.com", 18, "crr-9 A", "Gigante", "Activo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1004567833, "Viviana Ramos", "vivi@gmail.com", 20, "crr-10 B", "Garzon", "Inactivo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1034567822, "Paola Rivera", "pao@gmail.com", 21, "crr-11 C", "Florencia", "Inactivo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1204567832, "Camilo Martinez", "cami@gmail.com", 22, "crr-12 E", "Pitalito", "Activo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1004567835, "Andres Torres", "andres@gmail.com", 23, "crr-13 F", "suaza", "Activo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1274567866, "Laura Cifuentes", "lau@gmail.com", 24, "crr-14 G", "Timana", "Inactivo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1554567845, "Yuliana Ramirez", "yuli@gmail.com", 25, "crr-15 J", "Agrado", "Inactivo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1044567586, "Andrey Morales", "andrey@gmail.com", 26, "crr-16 K", "Pital", "Activo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1004567877, "Maria Vargas", "maria@gmail.com", 27, "crr-17 L", "Neiva", "Inactivo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1174567857, "Jhoana Bonilla", "jhoana@gmail.com", 28, "crr-18 M", "Hobo", "Activo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1184567897, "Greeicy Rendon", "greei@gmail.com", 29, "crr-19 N", "Bogota", "Inactivo","Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1064567887, "Juan Jimenez", "juan@gmail.com", 30, "crr-20 O", "Medellin", "Activo", "Tecnologo");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1094567855, "Duvan Guzman", "duvan@gmail.com", 31, "crr-21 P", "Pereira", "Inactivo", "Tecnico");
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación) VALUES (1444567888, "Natalia Trujillo", "nata@gmail.com", 32, "crr-22 Q", "Argentina", "Activo", "Tecnologo");

----< actualizar tabla
UPDATE Titulada
SET nombre_apellido = 'KAMELIN PANTEVIS '
WHERE id = 1004567833;

UPDATE Titulada
SET nombre_apellido = 'Valentina Rodriguez', correo ='valen@gmail.com', edad ='19'
WHERE id = 1234567812;
 ---< eliminar tabla de un registro
DELETE FROM titulada WHERE Id = 1234567812;