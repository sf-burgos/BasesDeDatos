CREATE OR REPLACE PACKAGE PK_EDITORIAL IS
	PROCEDURE AD_EDITORIAL (xcodigo IN VARCHAR, xnombre IN VARCHAR, xtelefono IN NUMBER, xdireccion IN VARCHAR, xcorreo IN VARCHAR);
	FUNCTION CO_EDITORIAL return sys_refcursor;
	PROCEDURE MO_EDITORIAL (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR);
END PK_EDITORIAL;
/
CREATE OR REPLACE PACKAGE BODY PK_EDITORIAL IS

    PROCEDURE AD_EDITORIAL (xcodigo IN VARCHAR, xnombre IN VARCHAR, xtelefono IN NUMBER, xdireccion IN VARCHAR, xcorreo IN VARCHAR) IS
    BEGIN 
    INSERT INTO editorial VALUES (xcodigo, xnombre, xtelefono, xdireccion, xcorreo);
    COMMIT;
    EXCEPTION 
        WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_EDITORIAL RETURN SYS_REFCURSOR IS CO_ED SYS_REFCURSOR;
    BEGIN
    OPEN CO_ED FOR
        SELECT * FROM  editorial;
    END;
    
    PROCEDURE MO_EDITORIAL(xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR) IS
    BEGIN
    UPDATE editorial SET direccion=xdireccion, telefono=xtelefono, correo=xcorreo;
    COMMIT;
    EXCEPTION 
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002,'No se puede modificar.');
    END;

END PK_EDITORIAL;


    
    