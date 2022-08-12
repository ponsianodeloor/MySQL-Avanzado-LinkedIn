DELIMITER $$

CREATE
    TRIGGER `tienda`.`tg_empleado_after_update` BEFORE UPDATE
    ON `tienda`.empleado
    FOR EACH ROW BEGIN
	IF(old.salario >= 400) THEN
		SET new.salario = old.salario + old.salario * 0.01;
	ELSE
		SET new.salario = old.salario + old.salario * 0.02;
	END IF;
    END$$

DELIMITER ;