#el cliente con el id 2 no tiene facturas
SELECT idCliente, nombre FROM cliente
WHERE EXISTS (SELECT * FROM factura WHERE factura.idCliente = cliente.idCliente)