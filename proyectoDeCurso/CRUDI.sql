CREATE OR REPLACE PACKAGE BODY PK_CLIENTE IS

    PROCEDURE AD_Cliente (xcodigo IN VARCHAR, xnombre IN VARCHAR, xtel IN VARCHAR) IS
    BEGIN
        INSERT INTO cliente (codigo, nombre,telefono) VALUES (xcodigo, xnombre, xtel);
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
/
CREATE OR REPLACE PACKAGE BODY PK_USUARIO IS

    PROCEDURE AD_USUARIO (xnombre IN VARCHAR, xtel IN VARCHAR) IS 
    BEGIN 
        INSERT INTO usuario(nombre,telefono) VALUES (xnombre, xtel);
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
    
    PROCEDURE MO_USUARIO (xtel IN VARCHAR) IS
    BEGIN 
    UPDATE  usuario SET telefono=xtel;
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar.');
    END;
END PK_USUARIO;
/
CREATE OR REPLACE PACKAGE BODY PK_AUTOR IS
    
    PROCEDURE AD_AUTOR (xnombre IN VARCHAR, xciudad IN VARCHAR,xpais IN NUMBER, xcod_libro IN VARCHAR) IS
    BEGIN
    INSERT INTO autor VALUES (xnombrE, xciudad, xpais, xcod_libro);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001,'No se puede insertar');
    END;
    
    FUNCTION CO_AUTOR RETURN SYS_REFCURSOR IS CO_AU SYS_REFCURSOR;
    BEGIN
    OPEN CO_AU FOR
        SELECT * FROM autor;
    END;

END PK_AUTOR;
/
CREATE OR REPLACE PACKAGE BODY PK_COMPRA IS
    PROCEDURE AD_COMPRA (xcodigo IN VARCHAR, xprecio IN VARCHAR, xcog_libro IN NUMBER, xdescuento IN VARCHAR, xcliente IN VARCHAR) IS
    BEGIN 
    INSERT INTO compra VALUES (xcodigo, xprecio, xcog_libro, xdescuento, xcliente);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001,'No se puede insertar');
    END;
    
    FUNCTION CO_COMPRA RETURN SYS_REFCURSOR IS CO_CP SYS_REFCURSOR;
    BEGIN
    OPEN CO_CP FOR
        SELECT * FROM compra;
    END;

END PK_COMPRA;
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
/
CREATE OR REPLACE PACKAGE BODY PK_LIBRO IS
    
    PROCEDURE AD_LIBRO(xisbn IN VARCHAR, xtitulo IN VARCHAR, num_pag IN NUMBER, xnum_ejemplares IN NUMBER, xdisponibles IN NUMBER) IS
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
