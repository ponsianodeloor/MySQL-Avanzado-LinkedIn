CREATE TABLE asociacion (
  `idAsociacion` INT NOT NULL AUTO_INCREMENT ,
  `idEmpleado` INT NOT NULL ,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `fechaIngreso` DATE NULL,
  `email` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`idAsociacion`))
DEFAULT CHARACTER SET = utf8mb4;

ALTER TABLE asociacion
ADD INDEX `FK_EMP_ASO_idx` (`idEmpleado` ASC) VISIBLE;
;
ALTER TABLE asociacion
ADD CONSTRAINT `FK_EMP_ASO`
  FOREIGN KEY (`idEmpleado`)
  REFERENCES empleado (`idEmpleado`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;
