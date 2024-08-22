CREATE DATABASE tutotech;

\c tutotech;

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE ventas (
    id INT PRIMARY KEY,
    producto_id INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);


INSERT INTO productos (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop Dell XPS 13', 'Laptop', 1200.00, 50),
(2, 'Laptop MacBook Pro', 'Laptop', 2500.00, 30),
(3, 'Monitor LG 24"', 'Monitor', 300.00, 100),
(4, 'Teclado Mecánico Logitech', 'Accesorios', 150.00, 200),
(5, 'Mouse Óptico Microsoft', 'Accesorios', 25.00, 500),
(6, 'Laptop Lenovo ThinkPad', 'Laptop', 900.00, 60),
(7, 'Monitor Samsung 27"', 'Monitor', 400.00, 80),
(8, 'Laptop HP Spectre x360', 'Laptop', 1400.00, 40);

INSERT INTO ventas (id, producto_id, cantidad, fecha) VALUES
(1, 1, 10, '2024-08-01'),
(2, 2, 5, '2024-08-01'),
(3, 3, 20, '2024-08-02'),
(4, 4, 15, '2024-08-02'),
(5, 5, 30, '2024-08-03'),
(6, 1, 5, '2024-08-03'),
(7, 3, 10, '2024-08-03'),
(8, 6, 25, '2024-08-04'),
(9, 7, 10, '2024-08-05'),
(10, 8, 8, '2024-08-05'),
(11, 2, 7, '2024-08-06'),
(12, 4, 20, '2024-08-06'),
(13, 5, 15, '2024-08-07'),
(14, 6, 10, '2024-08-07'),
(15, 7, 5, '2024-08-07');

