DELIMITER $$

CREATE
    PROCEDURE `tienda`.`sp_ciclo_repeat`(INOUT sumatoria INT)
    BEGIN
	DECLARE contador INT;
	SET contador = sumatoria;
	SET sumatoria = 0;
	REPEAT
		SET sumatoria = sumatoria + contador;
		SET contador = contador - 1;
	UNTIL contador < 1 END REPEAT;
    END$$

DELIMITER ;