#insert into select
INSERT INTO asociacion (idEmpleado, nombre, apellido, fechaIngreso, email, telefono)
SELECT idEmpleado, nombre, apellido, fechaIngreso, email, telefono
FROM empleado
WHERE fechaIngreso < '2019-01-01'