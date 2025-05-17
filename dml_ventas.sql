INSERT INTO Clientes (id_cliente, nombres, telefono, direccion) 
VALUES
(1, 'Juan Perez', '0981123456', 'Calle 1 Nro 123'),
(2, 'Maria Gomez', '0994789012', 'Avenida 2 Nro 456'),
(3, 'Carlos Lopez', NULL, 'Barrio Centro');


INSERT INTO 
Productos (id_producto, nombre, precio_venta, stock) 
VALUES
(1, 'Azucar Blanco', 8000.00, 150),
(2, 'Carne cortada', 56000.00, 50),
(3, 'Fideo talllarin', 6000.00, 30),
(4, 'Cinta de Raso Roja', 4000.00, 80);

INSERT INTO
Metodos_Pago(id_metodo_pago, descripcion)
VALUES 
(1, 'Contado'),
(2, 'Credito');

INSERT INTO 
Ventas (id_venta, ID_cliente, fecha, id_metodo_pago, hora) 
VALUES
(1, 1, '2025-05-17', 1, '10:45:22');


INSERT INTO 
Detalle_Ventas (ID_venta, ID_producto, cantidad, precio_unitario, subtotal) 
VALUES  (1, 1, 2, 8000.00, 16000.00), 
        (1, 3, 1, 6000.00, 6000.00),  
        (1, 2, 1, 56000.00, 56000.00);  

