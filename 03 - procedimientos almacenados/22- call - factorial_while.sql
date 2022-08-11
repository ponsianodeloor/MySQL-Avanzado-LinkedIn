SET @factorial = 5;
CALL sp_factorial_while (@factorial);

SELECT @factorial;