DELIMITER $$

USE `tienda`$$

DROP PROCEDURE IF EXISTS `sp_loop_simple`$$

CREATE PROCEDURE `sp_loop_simple`()
BEGIN
	DECLARE counter INT DEFAULT 0;
 
	  my_loop: LOOP
	    SET counter=counter+1;
	    IF counter=10 THEN
	      LEAVE my_loop;
	    END IF;
	    SELECT counter;
	    INSERT INTO tabla_para_loop(iteraccion_loop, comentario)
	    VALUE (counter, 'esto es un contador de loop ' + counter);
	    
	  END LOOP my_loop;
    END$$

DELIMITER ;