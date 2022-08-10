#se muestran a los clientes que tienen factura y pertenecesn al pais de Canada o Brazil
SELECT 
	idCliente,
	idFactura
FROM factura
WHERE idCliente IN (SELECT idCliente FROM cliente WHERE pais = 'Canada' OR pais = 'Brazil')