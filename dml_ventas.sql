INSERT INTO Clientes (nombre, apellido, telefono, direccion) VALUES
('Juan', 'Perez', '0981123456', 'Calle 1 Nro 123'),
('Maria', 'Gomez', '0994789012', 'Avenida 2 Nro 456'),
('Carlos', 'Lopez', NULL, 'Barrio Centro');


INSERT INTO 
Productos (nombre, descripcion, precio_venta, stock) 
VALUES
('Azucar Blanco', 'Azucar a granel kg.', 8000.00, 150),
('Carne cortada', 'carne de primera cortada', 56000.00, 50),
('Fideo talllarin', 'Paquete de fideos 400GR.', 6000.00, 30),
('Cinta de Raso Roja', 'Rollo de cinta de raso de 2cm de ancho', 4000.00, 80);


INSERT INTO 
Ventas (cliente_id, total_venta) 
VALUES
(1, 78000.00);


INSERT INTO 
DetalleVenta (venta_id, producto_id, cantidad, precio_unitario, subtotal) 
VALUES  (1, 1, 2, 8000.00, 16000.00), 
        (1, 3, 1, 6000.00, 6000.00),  
        (1, 2, 1, 56000.00, 56000.00);  

