#nanci no tiene email por lo tanto devuelve el telefono
SELECT
	nombre,
	IFNULL(email, telefono) AS contacto
FROM cliente
	