SELECT idProducto, nombre, precioUnitario, fn_nivelVentas(idProducto) AS ventas FROM producto
