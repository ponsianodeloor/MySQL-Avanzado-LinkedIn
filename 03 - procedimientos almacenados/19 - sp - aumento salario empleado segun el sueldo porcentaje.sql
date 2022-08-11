DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_subirSalarioEmpleado`()
    BEGIN
	DECLARE idEmpleado INT;
	DECLARE salarioActual DECIMAL(10,2);
	DECLARE finLoop BOOLEAN DEFAULT FALSE;
	
	DECLARE cursorEmpleados CURSOR FOR
		SELECT idEmpleado, salario FOR empleado;
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET finLoop = TRUE;
	
	OPEN cursorEmpleados;
		etiquetaLoop: LOOP
			FETCH cursorEmpleados INTO idEmpleado, salarioActual;
			
			IF finLoop THEN
				LEAVE etiquetaLoop;
			END IF;
			
			IF salarioActual >= 400
				UPDATE empleado SET salario = salarioActual + (salarioActual * 0.01) 
				WHERE empleado.idEmpleado = idEmpleado
			ELSE
				UPDATE empleado SET salario = salarioActual + (salarioActual * 0.02) 
				WHERE empleado.idEmpleado = idEmpleado
			END IF;
		END etiquetaLoop;
	CLOSE cursorEmpleados;
    END$$

DELIMITER ;