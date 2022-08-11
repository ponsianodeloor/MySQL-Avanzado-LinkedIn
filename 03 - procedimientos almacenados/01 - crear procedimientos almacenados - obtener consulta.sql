DELIMITER $$

CREATE
    PROCEDURE `tienda`.`pro_productos_categoria`(IN categoria INT)
    BEGIN
	SELECT * FROM producto
	WHERE idCategoria = categoria;
    END$$

DELIMITER ;