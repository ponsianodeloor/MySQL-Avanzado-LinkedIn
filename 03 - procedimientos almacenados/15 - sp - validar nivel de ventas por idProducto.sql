DELIMITER $$

CREATE
    PROCEDURE tienda.sp_nivelVentas(IN idProducto INT, OUT nivelVentas VARCHAR(12))
    BEGIN
	DECLARE cantidadVentas INT;
	
	SELECT SUM(cantidad) INTO cantidadVentas FROM detalle_factura 
	WHERE detalle_factura.idProducto = idProducto;
	
	IF cantidadVentas > 15 THEN
		SET nivelVentas = 'Muy buena';
	ELSEIF (cantidadVentas >=10) THEN
		SET nivelVentas = 'Buena';
	ELSE
		SET nivelVentas = 'Mejorable';
	END IF;	
    END$$

DELIMITER ;