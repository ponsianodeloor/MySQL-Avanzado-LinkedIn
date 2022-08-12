DELIMITER $$

CREATE
    TRIGGER `tienda`.`tg_empleado_before_insert` BEFORE INSERT
    ON tienda.empleado
    FOR EACH ROW BEGIN
	SET new.nombre =  CONCAT(UCASE(LEFT(new.nombre, 1)), SUBSTRING(new.nombre, 2));
	SET new.apellido = CONCAT(UCASE(LEFT(new.apellido, 1)), SUBSTRING(new.apellido, 2));
    END$$

DELIMITER ;