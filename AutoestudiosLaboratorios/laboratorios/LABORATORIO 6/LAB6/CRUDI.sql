CREATE OR REPLACE PACKAGE BODY PC_CONTENIDOS IS

    PROCEDURE AD_CONTENIDO (xnombre IN VARCHAR,xfecha IN DATE,xtipo IN CHAR, xurl IN VARCHAR) IS
    BEGIN
        INSERT INTO contenido(nombre, url, tipo) VALUES (xnombre,xurl,xtipo);
        COMMIT;
        EXCEPTION
            WHEN OTHER THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;

    PROCEDURE AD_TEMPORAL (xduracion IN NUMBER, xidioma IN CHAR, xnombre IN VARCHAR) IS
    BEGIN
    INSERT INTO temporal(duracion, idioma, nombre) VALUES (xduracion, xidioma, xnombre);
    COMMIT;
    EXCEPTION
    WHEN OTHER THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001,'No se puede insertar');
    END;
    
    PROCEDURE MO_CONTENIDO (xurl IN VARCHAR) IS
    BEGIN
    UPDATE contenido SET url=xurl;
    COMMIT;
    EXCEPTION 
    WHEN OTHER THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002,'No se puede modificar');
    END;
    
    FUNCTION CO_CONTENIDO RETURN SYS_REFCURSOR IS CO_CO SYS_REFCURSOR;
    BEGIN
    OPEN CO_CO FOR
        SELECT * FROM contenido;
        RETURN CO_CO;
    END;
    
    FUNCTION CO_TEMPORAL RETURN SYS_REFCURSOR IS CO_TE SYS_REFCURSOR;
    BEGIN
    OPEN CO_TE FOR
        SELECT * FROM temporal;
        RETURN CO_TE;
    END;
END PC_CONTENIDOS; 

CREATE OR REPLACE PACKAGE BODY PC_opinion IS

    PROCEDURE AD_OPINION (xnumero IN NUMBER, xfecha IN DATE, xtipo IN VARCHAR, xjustificacion IN VARCHAR, xdetalle IN VARCHAR, xperfil IN VARCHAR, xcontenido IN VARCHAR) IS
    BEGIN
        INSERT INTO opinion (numero, fecha, tipo, justificacion , detalle ,perfil ,contenido) VALUES (xnumero, xfecha, xtipo, xjustificacion, xdetalle, xperfil, xcontenido);
        COMMIT;
        EXCEPTION
            WHEN OTHER THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20001, 'No se puede insertar.');
    END;
    
    PROCEDURE MO_OPINION (xtipo IN VARCHAR, xdetalle IN VARCHAR) IS
    BEGIN
    UPDATE opinion SET detalle=xdetalle;
    COMMIT;
    EXCEPTION 
    WHEN OTHER THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002,'No se puede modificar');
    END;
        
    FUNCTION CO_OPINION RETURN SYS_REFCURSOR IS CO_OP SYS_REFCURSOR;
    BEGIN
    OPEN CO_OP FOR
        SELECT * FROM opinion;
        RETURN CO_OP;
    END;
END PC_opinion; 
