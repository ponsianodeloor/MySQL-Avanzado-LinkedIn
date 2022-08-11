SET @idDepartamento = 3;
CALL sp_numEmpleadosDepartamento(2);
SELECT @idDepartamento AS 'Empleados por departamento';