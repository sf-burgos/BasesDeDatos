CREATE OR REPLACE PACKAGE PK_LIBRO IS
	PROCEDURE AD_LIRBO (xisbn IN VARCHAR, xtitulo IN VARCHAR, num_pag IN NUMBER, xnum_ejemplares IN NUMBER, xdisponibles IN NUMBER);
	FUNCTION CO_LIBRO return sys_refcursor;
END PK_LIBRO;
/
CREATE OR REPLACE PACKAGE BODY PK_LIBRO IS
    
    PROCEDURE AD_LIRBO(xisbn IN VARCHAR, xtitulo IN VARCHAR, num_pag IN NUMBER, xnum_ejemplares IN NUMBER, xdisponibles IN NUMBER) IS
    BEGIN
    INSERT INTO libro (isbn, titulo, numero_paginas, numero_ejemplares, disponible) VALUES (xisbn, xtitulo, num_pag, xnum_ejemplares, xdisponibles);
    COMMIT;
    EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_LIBRO RETURN SYS_REFCURSOR IS CO_LI SYS_REFCURSOR;
    BEGIN   
    OPEN CO_LI FOR
        SELECT * FROM libro;
    END;

END PK_LIBRO;