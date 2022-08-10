#esta consulta devuelve a los empleados que no pertenecen al departamento general, solo frutas y carnes
SELECT
	nombre,
	apellido,
	idDepartamento
FROM empleado
WHERE idDepartamento NOT IN(SELECT idDepartamento FROM departamento WHERE nombre LIKE "%general%")