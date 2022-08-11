#3- Muestre el número de socio, el nombre del socio y el deporte en que está inscripto con un join de 
SELECT numero,nombre,deporte
  FROM socios
  JOIN inscriptos
  ON numerosocio=numero; 
  
  #4- Muestre los socios que serán compañeros en tenis y también en natación (empleando subconsulta)
  SELECT nombre
  FROM socios
  JOIN inscriptos
  ON numero=numerosocio
  WHERE deporte='natacion' AND 
  numero= ANY
  (SELECT numerosocio
    FROM inscriptos
    WHERE deporte='tenis'); 
    
#5- Vea si el socio 1 se ha inscripto en algún deporte en el cual se haya inscripto el socio 2.    
    SELECT deporte
  FROM inscriptos AS i
  WHERE numerosocio=1 AND
  deporte= ANY
   (SELECT deporte
    FROM inscriptos AS i
    WHERE numerosocio=2);
    
 #6- Obtenga el mismo resultado anterior pero empleando join.   
    SELECT deporte
  FROM inscriptos AS i
  WHERE numerosocio=2 AND
  cuotas>ANY
   (SELECT cuotas
    FROM inscriptos
    WHERE numerosocio=1);
  
 #7- Muestre los deportes en los cuales el socio 2 pagó más cuotas que ALGUN deporte en los que se inscribió el socio 1.   
     SELECT deporte
  FROM inscriptos AS i
  WHERE numerosocio=2 AND
  cuotas>ALL
   (SELECT cuotas
    FROM inscriptos
    WHERE numerosocio=1);
    
 #   8- Muestre los deportes en los cuales el socio 2 pagó más cuotas que TODOS los deportes en que se inscribió el socio 1.
 
 SELECT deporte
  FROM inscriptos AS i
  WHERE numerosocio=2 AND
  cuotas>ALL
   (SELECT cuotas
    FROM inscriptos
    WHERE numerosocio=1);