CREATE OR REPLACE PACKAGE PK_CLIENTE IS
	PROCEDURE AD_CLIENTE (xcodigo IN VARCHAR, xnombre IN VARCHAR, xref_per IN VARCHAR, fecha IN DATE);
	FUNCTION CO_CLIENTE return sys_refcursor;
	PROCEDURE AD_INFORMACION_PERSONAL (xcodigo IN VARCHAR,xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR, xcarrera_profesional IN VARCHAR);
	FUNCTION CO_INFORMACION_PERSONAL return sys_refcursor;
	PROCEDURE MO_INFORMACION_PERSONAL (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR);
	PROCEDURE AD_REFERENCIA (xcodigo IN VARCHAR, xnombre IN VARCHAR, xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR);
	FUNCTION CO_REFERENCIA return sys_refcursor;
	PROCEDURE MO_REFERENCIA (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN NUMBER);
END PK_CLIENTE;
/
CREATE OR REPLACE PACKAGE BODY PK_CLIENTE IS

    PROCEDURE AD_Cliente (xcodigo IN VARCHAR, xnombre IN VARCHAR, xref_per IN VARCHAR, fecha IN DATE) IS
    BEGIN
        INSERT INTO cliente (nombre, ref_per) VALUES (xnombre, xref_per);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_Cliente RETURN SYS_REFCURSOR IS CO_CL SYS_REFCURSOR;
    BEGIN
    OPEN CO_CL FOR
        SELECT * FROM Cliente;
        RETURN CO_CL;
    END;
    
    PROCEDURE AD_INFORMACION_PERSONAL  (xcodigo IN VARCHAR,xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR, xcarrera_profesional IN VARCHAR) IS
    BEGIN
        INSERT INTO informacion_personal (codigo, direccion,numero_de_telefono,correo,carrera_profesional) values (xcodigo, xdireccion, xtelefono, xcorreo, xcarrera_profesional);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_INFORMACION_PERSONAL RETURN SYS_REFCURSOR IS CO_IP SYS_REFCURSOR;
    BEGIN
    OPEN CO_IP FOR
        SELECT * FROM informacion_personal;
        RETURN CO_IP;
    END;
    
    PROCEDURE MO_INFORMACION_PERSONAL (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR) IS
    BEGIN
    UPDATE informacion_personal SET direccion=xdireccion , numero_de_telefono=xtelefono, correo=xcorreo;
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar.');
    END;

    PROCEDURE AD_REFERENCIA (xcodigo IN VARCHAR, xnombre IN VARCHAR, xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN VARCHAR) IS
    BEGIN
        INSERT INTO referencia (codigo, nombre,correo,telefono,direccion) values (xcodigo, xnombre, xcorreo, xtelefono, xdireccion);
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    FUNCTION CO_REFERENCIA RETURN SYS_REFCURSOR IS CO_RE SYS_REFCURSOR;
    BEGIN
    OPEN CO_RE FOR
        SELECT * FROM referencia;
        RETURN CO_RE;
    END;

    PROCEDURE MO_REFERENCIA (xdireccion IN VARCHAR, xtelefono IN NUMBER, xcorreo IN NUMBER) IS
    BEGIN
    UPDATE referencia SET direccion=xdireccion , telefono=xtelefono, correo=xCorreo;
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar.');
    END;
        
END PK_CLIENTE; 


