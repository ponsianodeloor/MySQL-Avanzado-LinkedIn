#facturas del cliente Jordi
SELECT * FROM factura
WHERE idCliente = (SELECT idCliente FROM cliente WHERE nombre = 'Jordi')