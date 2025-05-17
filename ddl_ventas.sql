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
    ID_venta SERIAL PRIMARY KEY,
    fecha DATE NOT NULL DEFAULT CURRENT_DATE,
    Hora TIME,
    ID_cliente INTEGER,
    ID_metodo_pago INTEGER,
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_Cliente) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (ID_metodo_pago) REFERENCES Metodos_Pago(ID_metodo_pago) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Crear la tabla Productos
CREATE TABLE Productos (
    ID_Producto SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Uni_medida VARCHAR(10),
    Precio_Venta DECIMAL(10, 2),
    Stock INT NOT NULL
);

-- Crear la tabla Detalle_Ventas
CREATE TABLE Detalle_Ventas (
    ID_venta INTEGER,
    ID_producto INTEGER,
    Cantidad INT,
    Precio_unitario DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    PRIMARY KEY (ID_venta, ID_producto), 
    FOREIGN KEY (ID_venta) REFERENCES Ventas(ID_venta) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (ID_producto) REFERENCES Productos(ID_Producto) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Crear la tabla Facturas
CREATE TABLE Facturas (
    ID_Factura SERIAL PRIMARY KEY,
    ID_cliente INTEGER,
    ID_venta INTEGER,
    Timbrado VARCHAR(8),
    num_Factura VARCHAR(15),
    fecha_emision DATE,
    Subtotal DECIMAL(10, 2),
    IVA DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_Cliente) ON UPDATE CASCADE ON DELETE RESTRICT
);