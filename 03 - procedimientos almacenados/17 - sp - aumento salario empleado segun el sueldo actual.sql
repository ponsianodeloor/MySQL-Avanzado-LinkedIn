DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_aumentoSalarioEmpleado`(
	IN idEmpleado INT, 
	OUT aumentoSalario DECIMAL(10,2)
    )
    BEGIN
	DECLARE salarioActual DECIMAL(10,2);
	
	SELECT empleado.salario INTO salarioActual FROM empleado 
	WHERE empleado.idEmpleado = idEmpleado;
	
	CASE salarioActual
		WHEN aumentoSalario > 600 THEN
			SET aumentoSalario = 0;
		WHEN aumentoSalario > 500 THEN
			SET aumentoSalario = 50;
		WHEN aumentoSalario > 400 THEN
			SET aumentoSalario = 40;
		ELSE
			SET aumentoSalario = 70;
	END CASE;	
	
    END$$

DELIMITER ;