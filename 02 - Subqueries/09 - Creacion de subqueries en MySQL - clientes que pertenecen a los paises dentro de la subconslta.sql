#solo devuelve a los clientes que pertenecen a esos paises
SELECT * FROM factura
WHERE idCliente 
	IN (SELECT idCliente FROM cliente WHERE pais IN ('Honduras', 'Estados Unidos', 'Colombia'))
ORDER BY idFactura