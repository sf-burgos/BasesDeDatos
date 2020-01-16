--(1)
SELECT título FROM libro  
--(2)
SELECT titulo, nombre FROM libro JOIN autor ON (ISBN=codigo_libro_escrito);
--(3)
SELECT * FROM autor JOIN libro ON (codigo_libro_escrito=ISBN) AND titulo='Hamlet';
--(4)
insert into usuario (codigo, nombre, telefono, fecha) values (1, 'Pedro Perez', '53448-0001', date'2019-5-17');
--(5)
CREATE SEQUENCE INSERTANDO2 START WITH 1;

BEFORE INSERT ON usuario 
FOR EACH ROW
BEGIN
    SELECT INSERTANDO2.NEXTVAL
    INTO :new.codigo
    FROM DUAL;
    :new.fecha:=sysdate;
END;
--(6)
insert into usuario (nombre, telefono) values  ('Pedro Perez', '53448-0001');
--(7)
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, carrera_profesional) values (1, 'calle 154 # 91-56’, '53448-0001', ‘Pedro Perez, 'Ingenieria de Sistemas’);
--(8)
EXECUTE PK_CLIENTE.AD_CLIENTE (2,'BRAYAN BURGOS', '51518514');
EXECUTE PK_CLIENTE.AD_CLIENTE (3,'SEBASTIAN NIETO', '4035551');
--(8.1)
SELECT * FROM CLIENTE;
--(9)
EXECUTE PK_CLIENTE.AD_INFORMACION_PERSONAL (2,'Calle 7 a bis 80 b 31', '51518514', 'brayanburgos1437@gmail.com', 'Ingenieria de sistemas');
--(9.1)
SELECT * FROM INFORMACION_PERSONAL;
--(10)
EXECUTE PK_LIBRO.AD_LIBRO (9999,'Aprendiendo ORACLE de 0', 789, 2,1);
--(11)
EXECUTE PK_COMPRA.AD_COMPRA  ('HAMLET', '$10.000', '7732', '10',2);