/*DISPARADORES*/
CREATE SEQUENCE INSERTANDO2 START WITH 1;

CREATE OR REPLACE TRIGGER  INSERTANDO2
BEFORE INSERT ON usuario 
FOR EACH ROW
BEGIN
    SELECT INSERTANDO2.NEXTVAL
    INTO :new.codigo
    FROM DUAL;
    :new.fecha:=sysdate;
END;
/
CREATE OR REPLACE TRIGGER  fecha
BEFORE INSERT ON cliente 
FOR EACH ROW
BEGIN
    :new.fecha:=sysdate;
END;
drop trigger fecha;
/*LOS CODIGOS DE LOS LIBROS NO SE PUEDEN MODIFICAR*/

/*Modificar detalle de LIBROS */

CREATE TRIGGER modificar_LIBRO_COLUMNAS 
    BEFORE INSERT ON libro
        FOR EACH ROW
            BEGIN
                IF :OLD.ISBN<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
                IF :OLD.titulo<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
                IF :OLD.numero_paginas<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                IF :OLD.numero_ejemplares<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
            END;

