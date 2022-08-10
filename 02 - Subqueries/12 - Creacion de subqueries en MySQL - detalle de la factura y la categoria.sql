SELECT 
	p.idProducto,
	p.nombre AS producto,
	c.nombre AS categoria
FROM producto p
LEFT JOIN categoria AS c USING(idCategoria)
WHERE NOT EXISTS (SELECT * FROM detalle_factura WHERE detalle_factura.idProducto = p.idProducto)	