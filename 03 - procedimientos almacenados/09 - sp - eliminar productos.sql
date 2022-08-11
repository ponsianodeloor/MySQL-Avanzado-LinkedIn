DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_eliminarProducto`(IN id INT)
    BEGIN
	DELETE FROM producto WHERE idProducto = id;
    END$$

DELIMITER ;