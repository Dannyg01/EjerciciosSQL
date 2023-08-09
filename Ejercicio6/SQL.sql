CREATE DATABASE biblioteca

ALTER TABLE usuario DROP COLUMN codigo; <--- eliminar columna--->

TIMESTAMP DEFAULT CURRENT_TIMESTAMP

ALTER TABLE categorias ADD FOREIGN KEY (id_libros) REFERENCES libros(id_libros);

FOREIGN KEY (id_oficina) REFERENCES Oficinas(id_oficina)

CREATE TABLE categorias(
    id_categorias INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(50)
);

CREATE TABLE libros(
    id_libros INT AUTO_INCREMENT PRIMARY KEY,
    id_categorias INT NOT NULL,
    nombre VARCHAR(50)NOT NULL,
    autor VARCHAR(50) NOT NULL,
    genero VARCHAR(50) NOT NULL
);

CREATE TABLE prestados(
    id_prestados INT AUTO_INCREMENT PRIMARY KEY,
    id_libros INT NOT NULL,
    numero VARCHAR(50),
    fecha_salida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_devo VARCHAR(50)
);

CREATE TABLE usuario(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    id_prestados INT NOT NULL,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE entrega(
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_prestados INT NOT NULL,
    entrega VARCHAR(50),
    fecha VARCHAR(50)
);

---categorias--

INSERT INTO categorias(nombre, descripcion) VALUES
('libro consulta', ' diccionarios, enciclopedias y atlas.
'),('libros prácticos', 'recetarios, instructivos y manuales.
');
INSERT INTO categorias(nombre, descripcion) VALUES
('Libros infantiles', 'aprender a leer y para bebés'),('ibros religiosos','oración'),
('libros artísticos e ilustrados', 'catálogos de museo y de fotografía'),
('libros de literatura',' cuentos, poemarios y novelas
');

 ---libros---

 INSERT INTO libros(id_categorias, nombre, autor, genero) VALUES
 (1, 'Don Quijote de La  Mancha','Miguel de Cervantes','caballeresco'),
 (2, 'Historias de Nueva Orleans','William Faulkner','Novela'),
 (3, 'El principito','Antoine SaintExupery','Aventura'),
 (4, 'Los Windsor','Kitty Kelley','Biografías'),(5, 'El Último Emperador','Pu-Yi','Autobiografías');


---prestados--

INSERT INTO prestados(id_libros, numero, fecha_devo ) VALUES
(1,'23','13/11/23'),(2,'12','5/12/23'),
(3,'1','1/12/23'),(4,'42','8/12/23'),
(5,'64','9/12/23');

---usuario---

 INSERT INTO usuario(id_prestados, nombre, apellido) VALUES
 (1,'José','Sánchez Pons'),(2,'Julian','Espinoza Vargas'),
 (3,'Greeicy','Vargas Bonilla'),(4,'Yuliana','Quitora Vargas'),
 (5,'Danny','Guzman Vargas');

 ---entrega--

 INSERT INTO entrega(id_prestados, entrega, fecha) VALUES
 (1,'Don Quijote de La  Mancha','3/11/22'),(2,'Historias de Nueva Orleans','4/11/22'),
 (3,'El principito','5/11/22'),(4,'Los Windsor','6/11/22'),(5,'El Último Emperador','7/10/22');