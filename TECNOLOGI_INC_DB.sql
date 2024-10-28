DROP DATABASE TECNOLOGI_INC_DB;

-- CREANDO TABLAS

-- Creación de la tabla Clientes (customers)
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,          -- Identificador único del cliente
    nombre VARCHAR2(50) NOT NULL,            -- Nombre del cliente
    apellido VARCHAR2(50) NOT NULL,          -- Apellido del cliente
    fecha_registro DATE,                     -- Fecha de registro del cliente
    email VARCHAR2(100),                     -- Correo electrónico del cliente
    telefono VARCHAR2(20)                    -- Teléfono del cliente
);

-- Creación de la tabla Productos (products)
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,           -- Identificador único del producto
    nombre_producto VARCHAR2(100) NOT NULL,  -- Nombre del producto
    categoria VARCHAR2(50),                  -- Categoría del producto
    precio NUMBER(10, 2) NOT NULL,           -- Precio del producto
    stock NUMBER NOT NULL                    -- Stock disponible del producto
);

-- Creación de la tabla Ventas (sales)
CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,              -- Identificador único de la venta
    customer_id NUMBER REFERENCES customers(customer_id), -- ID del cliente (FK)
    product_id NUMBER REFERENCES products(product_id),    -- ID del producto (FK)
    cantidad NUMBER NOT NULL,                -- Cantidad de productos vendidos
    fecha_venta DATE NOT NULL,               -- Fecha de la venta
    total_venta NUMBER(10, 2)                -- Total de la venta
);

-- Creación de la tabla Personal de Ventas (sales_staff)
CREATE TABLE sales_staff (
    staff_id NUMBER PRIMARY KEY,             -- Identificador único del personal de ventas
    nombre VARCHAR2(50) NOT NULL,            -- Nombre del personal
    apellido VARCHAR2(50) NOT NULL,          -- Apellido del personal
    email VARCHAR2(100),                     -- Correo electrónico del personal
    telefono VARCHAR2(20)                    -- Teléfono del personal
);



--POBLANDO TABLAS

-- Población de la tabla Clientes (customers)
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(1, 'Juan', 'Pérez', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'juan.perez@mail.com', '123456789');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(2, 'Camila', 'Soto', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'camila.soto@mail.com', '987654321');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(3, 'Andrés', 'Muñoz', TO_DATE('2022-03-20', 'YYYY-MM-DD'), 'andres.munoz@mail.com', '876543210');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(4, 'Valentina', 'González', TO_DATE('2024-04-12', 'YYYY-MM-DD'), 'valentina.gonzalez@mail.com', '765432109');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(5, 'Ricardo', 'Torres', TO_DATE('2023-05-18', 'YYYY-MM-DD'), 'ricardo.torres@mail.com', '654321098');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(6, 'Fernanda', 'Rojas', TO_DATE('2022-06-25', 'YYYY-MM-DD'), 'fernanda.rojas@mail.com', '543210987');
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(7, 'Tomás', 'Castro', TO_DATE('2024-07-30', 'YYYY-MM-DD'), 'tomas.castro@mail.com', '432109876');

-- Población de la tabla Productos (products)
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(1, 'Laptop Lenovo Ideapad', 'Computadores', 750000, 15);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(2, 'Smartphone Samsung Galaxy', 'Celulares', 500000, 30);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(3, 'Tablet Apple iPad', 'Tablets', 400000, 20);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(4, 'Monitor LG 24"', 'Monitores', 150000, 10);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(5, 'Impresora Epson EcoTank', 'Impresoras', 200000, 25);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(6, 'Teclado Mecánico Logitech', 'Periféricos', 80000, 50);
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(7, 'Mouse Inalámbrico Microsoft', 'Periféricos', 25000, 70);

-- Población de la tabla Ventas (sales)
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(1, 1, 1, 1, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 750000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(2, 2, 2, 2, TO_DATE('2023-09-10', 'YYYY-MM-DD'), 1000000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(3, 3, 3, 1, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 400000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(4, 4, 4, 2, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 300000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(5, 5, 5, 1, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 200000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(6, 6, 6, 3, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 240000);
INSERT INTO sales (sale_id, customer_id, product_id, cantidad, fecha_venta, total_venta) VALUES
(7, 7, 7, 2, TO_DATE('2022-04-25', 'YYYY-MM-DD'), 50000);

-- Población de la tabla Personal de Ventas (sales_staff)
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(1, 'Lorena', 'Espinoza', 'lorena.espinoza@empresa.com', '321098765');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(2, 'Carlos', 'Araya', 'carlos.araya@empresa.com', '210987654');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(3, 'Paula', 'Morales', 'paula.morales@empresa.com', '109876543');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(4, 'Felipe', 'Saavedra', 'felipe.saavedra@empresa.com', '098765432');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(5, 'Daniela', 'Carrasco', 'daniela.carrasco@empresa.com', '987654321');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(6, 'Javier', 'Lagos', 'javier.lagos@empresa.com', '876543210');
INSERT INTO sales_staff (staff_id, nombre, apellido, email, telefono) VALUES
(7, 'Macarena', 'Figueroa', 'macarena.figueroa@empresa.com', '765432109');


-- Verificar datos en la tabla Clientes (customers)
SELECT * FROM customers;

-- Verificar datos en la tabla Productos (products)
SELECT * FROM products;

-- Verificar datos en la tabla Ventas (sales)
SELECT * FROM sales;

-- Verificar datos en la tabla Personal de Ventas (sales_staff)
SELECT * FROM sales_staff;


-- (VERIFICADOS CORRECTAMENTE)

-- Desafío 1:Obtener la lista de clientes registrados en el último mes, mostrando su nombre completo y fecha de registro. Ordenar la lista por fecha de registro en orden descendente.

-- Como no tengo ningun dato que funcione entonces insertaremos cliente en el ultimo mes y luego haremos la consulta:

-- Inserción de tres clientes con fechas en octubre de 2024
INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(8, 'Carlos', 'López', TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'carlos.lopez@mail.com', '123987456');

INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(9, 'María', 'Fernández', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'maria.fernandez@mail.com', '987654321');

INSERT INTO customers (customer_id, nombre, apellido, fecha_registro, email, telefono) VALUES
(10, 'Jorge', 'Ramírez', TO_DATE('2024-10-25', 'YYYY-MM-DD'), 'jorge.ramirez@mail.com', '456789123');

--Consulta

SELECT CONCAT (nombre,' ')|| apellido AS "Nombre Completo",
    fecha_registro AS "Fecha de Registro"
FROM 
    customers
WHERE 
    EXTRACT(MONTH FROM fecha_registro) = EXTRACT(MONTH FROM SYSDATE)
ORDER BY 
    fecha_registro DESC;


--(Funciona la consulta)


-- DESAFÍO 2: Calcular el incremento del 15% del precio de todos los productos cuyo nombre termine en A y que tengan más de 10 unidades en stock. Considera el resultado del incremento con 1 decimal. Ordenar el listado por el incremento de forma ascendente.


-- Inserción de productos cuyo nombre termina en "A" y tienen más de 10 unidades en stock ya que ningun dato previamente ingresado cumple con esta consulta
INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(8, 'Cámara', 'Cámaras', 250000, 20);

INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(9, 'Impresora', 'Impresoras', 150000, 15);

INSERT INTO products (product_id, nombre_producto, categoria, precio, stock) VALUES
(10, 'Antena', 'Accesorios', 50000, 12);



SELECT * FROM products;


-- Consulta para calcular el incremento del 15% del precio en productos que cumplen con los requisitos

SELECT 
    nombre_producto AS "Producto",
    precio AS "Precio Original",
    ROUND(precio * 1.15, 1) AS "Precio Incrementado"
FROM 
    products
WHERE 
    UPPER(SUBSTR(nombre_producto, -1)) = 'A'  -- Verifica que el último carácter sea "A" en mayúscula (No se utiliza LIKE ya que este es sensible a minusculas y mayusculas por lo que decidí utilizar SUBSTR y UPPER que es mas robusto)
    AND stock > 10                            -- Más de 10 unidades en stock
ORDER BY 
    "Precio Incrementado" ASC;                -- Orden ascendente por el precio incrementado

--(Funciona la consulta)


-- DESAFÍO 3: Mostrar la lista del personal de ventas registrado en la base de datos, mostrando su nombre completo, correo electrónico y creando una contraseña por defecto...


SELECT 
    nombre || ' ' || apellido AS "Nombre Completo",                  -- Nombre completo del personal
    email AS "Correo Electrónico",                                   -- Correo electrónico
    SUBSTR(nombre, 1, 4) ||                                          -- 4 primeras letras del nombre
    LENGTH(email) ||                                                 -- Cantidad de caracteres del correo electrónico
    SUBSTR(apellido, -3) AS "Contraseña por Defecto"                 -- 3 últimas letras del apellido
FROM 
    sales_staff
ORDER BY 
    --apellido DESC,                                                   -- Orden por apellido descendente
    nombre ASC;                                                      -- Orden por nombre ascendente

-- Realmente no entendí como ordenar el Nombre de manera ASC y el Apellido de manera DESC en el mismo SCRIPT por lo que decidí solo utilizar el orden de NOMBRE ASC.

--(Funciona la consulta)


-- FIN DE LOS DESAFÍOS...
