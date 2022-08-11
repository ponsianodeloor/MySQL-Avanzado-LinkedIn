DELIMITER $$

CREATE
    
    PROCEDURE `tienda`.`sp_numEmpleadosDepartamento`(INOUT idDepartamento INT)
    BEGIN
	SELECT COUNT(*) INTO idDepartamento FROM empleado WHERE empleado.idDepartamento = idDepartamento;
    END$$

DELIMITER ;