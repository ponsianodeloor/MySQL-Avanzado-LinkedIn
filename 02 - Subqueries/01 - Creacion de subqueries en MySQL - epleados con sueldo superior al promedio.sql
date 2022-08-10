#mostrar empleados con sueldo superior al promedio usando subconsultas
SELECT
	idEmpleado,
	nombre,
	apellido,
	salario
FROM empleado
WHERE salario > (SELECT AVG (salario) FROM empleado)