CALL sp_nivelVentas(5, @nivelVentas);
SELECT @nivelVentas;

SELECT * FROM producto WHERE idProducto = 5;