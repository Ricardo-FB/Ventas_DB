-- Crear la base de datos
CREATE DATABASE ventas_db;

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente SERIAL PRIMARY KEY,
    Nombres VARCHAR(100),
    Direccion TEXT,
    Telefono VARCHAR(20),
    Email VARCHAR(50),
    Ruc_ci VARCHAR(20)
);

-- Crear la tabla Metodos_Pago
CREATE TABLE Metodos_Pago (
    ID_metodo_pago SERIAL PRIMARY KEY,
    Descripcion VARCHAR(100)
);

-- Crear la tabla Ventas
CREATE TABLE Ventas (
    id_venta SERIAL PRIMARY KEY,
    fecha DATE NOT NULL DEFAULT CURRENT_DATE
    Hora TIME,
    id_cliente SERIAL,
    ID_metodo_pago SERIAL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_metodo_pago) REFERENCES Metodos_Pago(ID_metodo_pago)
);

-- Crear la tabla Productos
CREATE TABLE Productos (
    Id_Producto SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Uni_medida VARCHAR(10),
    Precio_Venta DECIMAL(10, 2)
);

-- Crear la tabla Detalle_Ventas
CREATE TABLE Detalle_Ventas (
    id_venta SERIAL,
    id_producto SERIAL,
    Cantidad SERIAL,
    Precio_unitario DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    PRIMARY KEY (id_venta, id_producto), 
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(Id_Producto)
);

-- Crear la tabla Facturas
CREATE TABLE Facturas (
    ID_Factura SERIAL PRIMARY KEY,
    Timbrado VARCHAR(8),
    ID_venta SERIAL,
    num_Factura VARCHAR(15),
    ID_cliente SERIAL,
    fecha_emision DATE,
    Subtotal DECIMAL(10, 2),
    IVA DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    FOREIGN KEY (ID_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_Cliente)
);