#uniones de tabla

SELECT idEmpleado AS id, nombre, apellido, IFNULL(email, telefono) AS contacto, 'Empleado' AS 'Tipo Usuario'
FROM empleado
UNION 
SELECT idCliente AS id, nombre, apellido, IFNULL(email, telefono) AS contacto, 'Empleado' AS 'Tipo Usuario'
FROM cliente