SELECT
	nombre,
	IF(fechaIngreso < '2016-12-31', CONCAT(idEmpleado, '-16'),
		IF(fechaIngreso < '2016-12-31', CONCAT(idEmpleado, '-16'),
			IF(fechaIngreso < '2016-12-31', CONCAT(idEmpleado, '-16'),
				CONCAT(idEmpleado, '-19')
			)
		)
	) AS codigo
FROM empleado