CREATE OR REPLACE PACKAGE AC_CLIENTE IS

    PROCEDURE AD_CLIENTE (xcodigo IN VARCHAR, xnombre IN VARCHAR, xtel IN VARCHAR);
	FUNCTION CO_CLIENTE return sys_refcursor;
    
    FUNCTION  CO_COMPRA RETURN SYS_REFCURSOR;
    
    PROCEDURE AD_REFERENCIA (xcodigo IN VARCHAR, xnombre IN VARCHAR, xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR);
	FUNCTION CO_REFERENCIA return sys_refcursor;
	PROCEDURE MO_REFERENCIA (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN NUMBER); 

END AC_CLIENTE;
/
CREATE OR REPLACE PACKAGE BODY AC_CLIENTE IS

    PROCEDURE AD_CLIENTE (xcodigo IN VARCHAR, xnombre IN VARCHAR, xtel IN VARCHAR) IS
    BEGIN
        PK_CLIENTE.AD_CLIENTE(xcodigo, xnombre, xtel);
    COMMIT;
    EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20003,'No se puede insertar usuario');
    END;
    
    FUNCTION CO_CLIENTE RETURN SYS_REFCURSOR IS CO_CL SYS_REFCURSOR;
    BEGIN
        CO_CL :=PK_CLIENTE.CO_CLIENTE;
        RETURN CO_CL;
    END;
        
    FUNCTION CO_COMPRA RETURN SYS_REFCURSOR IS CO_CP SYS_REFCURSOR;
    BEGIN
        CO_CP :=PK_COMPRA.CO_COMPRA;
        RETURN CO_CP;
    END;
    
    PROCEDURE AD_REFERENCIA (xcodigo IN VARCHAR, xnombre IN VARCHAR, xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR) IS
    BEGIN
        PK_CLIENTE.AD_REFERENCIA (xcodigo, xnombre, xdireccion, xtelefono, xcorreo);
    COMMIT;
    EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20003,'No se puede insertar usuario');
    END;
    
    FUNCTION CO_REFERENCIA RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
    BEGIN
        CO_RE :=PK_CLIENTE.CO_REFERENCIA;
        RETURN CO_RE;
    END;
    
    PROCEDURE MO_REFERENCIA (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN NUMBER) IS
    BEGIN
        PK_CLIENTE.MO_REFERENCIA(xdireccion, xtelefono, xcorreo);
    COMMIT;
    EXCEPTION
		WHEN OTHERS THEN
			ROLLBACK;
			RAISE_APPLICATION_ERROR(-20004,'No se puede modificar usuario.');
		END;

END AC_CLIENTE;

