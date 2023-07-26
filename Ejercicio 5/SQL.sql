CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(20),
    correo VARCHAR (50)
);  
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP

INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Valentina", "Rodriguez", "valen@gmail.com","crr-1 A", "3124334109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Julian", "Espinoza", "juli@gmail.com","crr-2 D", "3124334109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Viviana", "Ramos", "vivi@gmail.com", "crr-3 B", "3124334101", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Paola", "Rivera", "pao@gmail.com", "crr-4 C", "3124334102", "Inactivo",);
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Camilo", "Martinez", "cami@gmail.com", "crr-5 E","3124334103", "Activo",);
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Andres", "Torres", "andres@gmail.com", "crr-6 F", "3124334104", "Activo", );
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Laura", "Cifuentes", "lau@gmail.com", "crr-7 G", "3124334105", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Yuliana", "Ramirez", "yuli@gmail.com", "crr-8 J", "3124334106", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Andrey", "Morales", "andrey@gmail.com","crr-9 K", "3124334107", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Maria", "Vargas", "maria@gmail.com", "crr-10 L", "3124334108", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Jhoana", "Bonilla", "jhoana@gmail.com", "crr-11 M", "3124344109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Greeicy", "Rendon", "greei@gmail.com", "crr-12 N", "3124534109", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Juan", "Jimenez", "juan@gmail.com", "crr-13 O", "3124364109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Duvan", "Guzman", "duvan@gmail.com", "crr-14 P", "3124374109", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Lily", "Wright", "lily.wright@gmail.com", "crr-15 Q", "3134384109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Henry", "Martin", "henry.martin@gmail.com", "crr-16 R", "3144384109", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Nicholas", "Green", "nicholas.green@gmail.com", "crr-17 S", "3154384109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Daniel", "Taylor", "daniel.taylor@gmail.com", "crr-18 T", "3164384109", "Inactivo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Emily", "Lee", "emily.lee@gmail.com",  "crr-19 U", "3174384109", "Activo");
INSERT INTO cliente ( nombre_apellido, direccion, telefono, correo, estado) VALUES ( "Alex", "Baker", "alex.baker@gmail.com", "crr-20 V", "3184384109", "Inactivo");

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    fecha_venta VARCHAR(50),
    total_venta DECIMAL(10,2)
);  
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    ALTER TABLE ventas ADD FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)





CREATE TABLE det_ventas (
    id_detalle INT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2)
);  
    ALTER TABLE det_ventas ADD FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    ALTER TABLE det_ventas ADD FOREIGN KEY (id_producto) REFERENCES productos(id_producto)

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR (50),
    descripcion VARCHAR(50),
    precio DECIMAL(10,2)
); 



