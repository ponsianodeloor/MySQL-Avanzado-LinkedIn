DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_insertarRegistroValidacion`(
	IN nombre VARCHAR(45), 
	IN idCategoria INT,
	IN precioUnitario DECIMAL(10,2)
    )
    BEGIN
	DECLARE fk_problema CONDITION FOR 1452;
	DECLARE CONTINUE HANDLER FOR fk_problema	
	BEGIN
		SELECT 'No existe la categoria' AS mensaje;
	END;
	INSERT INTO producto (
		nombre, 
		idCategoria, 
		precioUnitario
		)
		VALUE(
			nombre,
			idCategoria,
			precioUnitario
		);
    END$$

DELIMITER ;