#controlar transacciones en MySQL

#validar que el autocommit este habilitado
SELECT @@autocommit;

#se puede deshabilitar con el valor en 0
SET autocommit = 0;
SET autocommit = 1;

SELECT * FROM producto WHERE idProducto = 12;

#ejecutar transaccion
START TRANSACTION;
UPDATE producto SET nombre = 'Arroz Integral' WHERE idProducto = 12;
SELECT * FROM producto WHERE idProducto = 12;

#si algo no se ejecuta devolverlo
ROLLBACK;
SELECT * FROM producto WHERE idProducto = 12;

#si todo esta bien aceptar los cambios
COMMIT; 
SELECT * FROM producto WHERE idProducto = 12;

