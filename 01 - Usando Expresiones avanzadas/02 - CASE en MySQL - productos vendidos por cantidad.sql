SELECT idFactura, idProducto,
CASE
	WHEN cantidad > 2 THEN 'Mas de dos productos vendidos'
	WHEN cantidad = 2 THEN '2 productos vendidos'
	WHEN cantidad < 2 THEN 'Menos de dos productos vendidos'
	END AS cantidad
FROM detalle_factura