DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_factorial_while`(INOUT numero INT)
    BEGIN
	DECLARE factorial, inicial INT;
	SET inicial = 1;
	SET factorial = 1;
	
	WHILE inicial <= numero DO
		SET factorial = factorial * inicial;
		SET inicial = inicial + 1;
	END WHILE;
	SET numero = factorial;
    END$$

DELIMITER ;