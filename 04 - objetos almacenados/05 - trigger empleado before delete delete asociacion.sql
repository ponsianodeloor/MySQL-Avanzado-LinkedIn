DELIMITER $$

USE `tienda`$$

DROP TRIGGER /*!50032 IF EXISTS */ `tg_empleado_before_delete`$$

CREATE
    /*!50017 DEFINER = 'usr_apptics'@'localhost' */
    TRIGGER `tg_empleado_before_delete` BEFORE DELETE ON `empleado` 
    FOR EACH ROW BEGIN
	DELETE FROM asociacion WHERE asociacion.idEmpleado = old.idEmpleado;
	INSERT INTO empleado_deleted(
				idEmpleado, 
				nombre, 
				apellido, 
				fechaIngreso, 
				fechaNacimiento,
				sexo,
				email,
				telefono,
				salario,
				idDepartamento
				)
				VALUES(
					old.idEmpleado,
					old.nombre,
					old.apellido,
					old.fechaIngreso,
					old.fechaNacimiento,
					old.sexo,
					old.email,
					old.telefono,
					old.salario,
					old.idDepartamento
				);
	
    END;
$$

DELIMITER ;