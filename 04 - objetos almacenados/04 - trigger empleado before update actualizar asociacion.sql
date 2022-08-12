DELIMITER $$

CREATE
    TRIGGER `tienda`.`tg_empleado_before_update` BEFORE UPDATE
    ON `tienda`.empleado
    FOR EACH ROW BEGIN
	UPDATE asociacion
		SET 
		nombre = new.nombre,
		apellido = new.apellido,
		fechaIngreso = new.fechaIngreso,
		email = new.email,
		telefono = new.telefono
	WHERE idEmpleado =  new.idEmpleado;
	
    END$$

DELIMITER ;