CREATE VIEW vw_ventas AS
    SELECT 
        idFactura,
        idProducto,
        precioUnitario,
        cantidad
    FROM detalle_factura;

CREATE VIEW `vw_listaclientes` AS
SELECT * FROM cliente;
