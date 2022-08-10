#devuelve un valor total en caso de tener mayor cantidad de producto en el detalle de la factura
SELECT 
	idProducto,
	cantidad,
		IF(cantidad > 1, cantidad * precioUnitario, precioUnitario) AS total
FROM detalle_factura