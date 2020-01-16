CREATE OR REPLACE PACKAGE PK_COMPRA IS
	PROCEDURE AD_COMPRA (xcodigo IN VARCHAR, xprecio IN VARCHAR, xcog_libro IN NUMBER, xdescuento IN VARCHAR, xcliente IN VARCHAR);
	FUNCTION CO_COMPRA return sys_refcursor;
END PK_COMPRA;
/
CREATE OR REPLACE PACKAGE BODY PK_COMPRA IS
    PROCEDURE AD_COMPRA (xcodigo IN VARCHAR, xprecio IN VARCHAR, xcog_libro IN NUMBER, xdescuento IN VARCHAR, xcliente IN VARCHAR) IS
    BEGIN 
    INSERT INTO compra VALUES (xcodigo, xprecio, xcog_libro, xdescuento, xcliente);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001,'Nose puede insertar');
    END;
    
    FUNCTION CO_COMPRA RETURN SYS_REFCURSOR IS CO_CP SYS_REFCURSOR;
    BEGIN
    OPEN CO_CP FOR
        SELECT * FROM compra;
    END;

END PK_COMPRA;
    