delimiter // 
CREATE PROCEDURE `pro_numeroEmpleadosDepartamento`(inout idDepartamento int)
BEGIN
	select count(*) into idDepartamento from empleado where empleado.idDepartamento = idDepartamento;
END;//
delimiter ;