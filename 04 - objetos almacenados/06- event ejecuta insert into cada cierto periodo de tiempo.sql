#mostrar los procesos activos
SHOW PROCESSLIST;

#configurar la variable global para crear eventos
SET GLOBAL event_scheduler = ON;

#crear eventos 
CREATE EVENT IF NOT EXISTS ev_crearToken
ON SCHEDULE EVERY 5 SECOND
DO INSERT INTO token (token) VALUES (SHA1(NOW()));

#habilitar o deshabilitar eventos
ALTER EVENT ev_crearToken DISABLE;
ALTER EVENT ev_crearToken ENABLE;


#modificar eventos tiempo o agregar mas sentencias
ALTER EVENT ev_crearToken
ON SCHEDULE EVERY 5 SECOND
DO INSERT INTO token (token) VALUES (SHA1(NOW()));

#eliminar eventos
DROP EVENT ev_crearToken




