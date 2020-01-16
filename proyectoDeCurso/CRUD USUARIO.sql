CREATE OR REPLACE PACKAGE PK_USUARIO IS
	PROCEDURE AD_USUARIO (xcodigo IN VARCHAR, xnombre IN VARCHAR, xref_per IN VARCHAR, fecha IN DATE);
	FUNCTION CO_USUARIO return sys_refcursor;
	PROCEDURE MO_USUARIO (xref_per IN VARCHAR);
END PK_USUARIO;
/
CREATE OR REPLACE PACKAGE BODY PK_USUARIO IS

    PROCEDURE AD_USUARIO (xcodigo IN VARCHAR, xnombre IN VARCHAR, xref_per IN VARCHAR, fecha IN DATE) IS 
    BEGIN 
        INSERT INTO usuario(codigo,nombre,refencia_personal,fecha) VALUES (xcodigo, xnombre, xref_per, fecha);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_USUARIO RETURN SYS_REFCURSOR IS CO_US SYS_REFCURSOR;
    BEGIN
    OPEN CO_US FOR
        SELECT * FROM usuario;
    END;
    
    PROCEDURE MO_USUARIO (xref_per IN VARCHAR) IS
    BEGIN 
    UPDATE  usuario SET refencia_personal=xref_per;
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar.');
    END;
END PK_USUARIO;


            