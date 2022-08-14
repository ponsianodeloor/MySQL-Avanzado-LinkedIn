DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    FUNCTION `tienda`.`fn_nivelVentas`(idProducto INT)
    RETURNS VARCHAR(45) DETERMINISTIC
  
    BEGIN
	DECLARE cantidadVentas INT;
	DECLARE nivelVentas VARCHAR(45);
	
	SELECT SUM(cantidad) INTO cantidadVentas FROM detalle_factura 
	WHERE detalle_factura.idProducto = idProducto;
	
	CASE
		WHEN  cantidadVentas > 15 THEN
			SET nivelVentas = CONCAT (cantidadVentas, ' Muy buena');
		WHEN cantidadVentas > 10 THEN
			SET nivelVentas = CONCAT (cantidadVentas, ' Buena');
		ELSE 
			SET nivelVentas = CONCAT (cantidadVentas, ' Mejorable');
	END CASE;
	RETURN nivelVentas;
	 
    END$$

DELIMITER ;