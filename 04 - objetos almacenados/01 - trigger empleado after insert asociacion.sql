DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `tienda`.tg_empleado_after_insert AFTER INSERT
    ON tienda.empleado
    FOR EACH ROW BEGIN
	INSERT INTO asociacion(idEmpleado, nombre, apellido, fechaIngreso, email, telefono)
	VALUES(new.idEmpleado, new.nombre, new.apellido, new.fechaIngreso, new.email, new.telefono);
    END$$

DELIMITER ;