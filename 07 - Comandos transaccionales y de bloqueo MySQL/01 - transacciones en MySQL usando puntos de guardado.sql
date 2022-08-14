
START TRANSACTION;

SAVEPOINT sp_inicial;
DELETE FROM cliente WHERE idCliente = 12;
SELECT * FROM cliente WHERE idCliente = 12;

ROLLBACK TO sp_inicial;
SELECT * FROM cliente;

COMMIT;
SELECT * FROM cliente;