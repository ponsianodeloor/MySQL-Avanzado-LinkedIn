SELECT 
	nombre,
	IFNULL((SELECT email FROM cliente WHERE idCliente = 14), 'No tiene email registrado') AS email
FROM cliente 
WHERE idCliente = 14