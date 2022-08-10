#se muestran los productos que han sido vendidos

SELECT idProducto, nombre
FROM producto
WHERE idProducto = ANY (SELECT idProducto FROM detalle_factura)