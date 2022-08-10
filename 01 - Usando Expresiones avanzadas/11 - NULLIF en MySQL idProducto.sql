SELECT
	NULLIF(
		(SELECT precioUnitario FROM producto WHERE idProducto = 1),
		(SELECT precioUnitario FROM producto WHERE idProducto = 2)
		)
	