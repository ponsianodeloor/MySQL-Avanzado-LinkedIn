SELECT idEmpleado, nombre, apellido, salario FROM empleado

CALL sp_aumentoSalarioEmpleado(5, @aumentoSalario);
SELECT @aumentoSalario;