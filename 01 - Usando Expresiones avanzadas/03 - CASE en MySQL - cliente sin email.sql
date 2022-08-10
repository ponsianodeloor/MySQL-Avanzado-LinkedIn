SELECT nombre, apellido, telefono,
	CASE
		WHEN email IS NULL THEN 'No tiene email registrado'
		ELSE email
	END AS email,
	pais	
FROM cliente