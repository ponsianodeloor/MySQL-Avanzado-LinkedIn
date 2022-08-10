#se muestran los productos que han sido vendidos segun la categoria 1 y 2

SELECT idFactura, idProducto, (cantidad * precioUnitario) AS total
FROM detalle_factura
WHERE idProducto = SOME (SELECT idProducto FROM producto WHERE idCategoria IN (1,2))