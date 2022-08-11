DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_obtener_salario_minimo`(OUT salario DOUBLE)
   
    BEGIN
	SELECT MIN(empleado.salario) INTO salario FROM empleado;
    END$$

DELIMITER ;