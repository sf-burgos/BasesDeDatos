/*Registrar Opinion*/


/*El número y la fecha se asigna automáticamente*/
CREATE OR REPLACE TRIGGER AGREGAR_FECHA_HORA
  BEFORE INSERT ON Opinion 
      FOR EACH ROW 
	    DECLARE
		  V_fecha number;
          NUMERO NUMBER;
          fecha DATE;
		BEGIN 
          SELECT MAX(numero) INTO NUMERO FROM opinion;
          SELECT count(numero) INTO V_fecha FROM opinion;
          if V_fecha=0 then 
            :NEW.numero:=1;
          ELSE
            :NEW.numero:=NUMERO+1;
          END if;
          SELECT  TO_date(SYSDATE, 'YYYY-MM-DD') INTO :new.fecha FROM dual;
        END;
drop trigger AGREGAR_FECHA_HORA;
select * from Opinion;
insert into  Opinion (tipo,justificacion,detalle, perfil, contenido) values  ('C', 'hj', 'que se yo', 'paula.guevara@mail.edu.co',  N'Sebastian Nieto');

/*No se pueden dar opiniones sobre contenidos bloqueados*/

CREATE OR REPLACE TRIGGER No_opinar_en_bloqueados
    BEFORE INSERT ON Opinion
        FOR EACH ROW
            DECLARE
                VALIDAR number;
            BEGIN 
              SELECT bloqueado into VALIDAR FROM Perfil JOIN Opinion ON (Perfil.correo=Opinion.perfil);
              if VALIDAR=1 then
                RAISE_APPLICATION_ERROR(-20008, 'NO puede comentar un contenido bloqueado');
              END if;
            END;
drop trigger No_opinar_en_bloqueados;
insert into  Opinion  (tipo,justificacion,detalle, perfil, contenido) values  ('E', 'adsfg', null, 'paula.guevara@mail.edu.co', 'Paula Guevara');

/*Se deben adicionar automáticamente los siguientes adjetivos dependiendo del tipo de  opinión:
encantador para me encanta, interesante para me gusta, confuso para me confunde e inapropiado para me enoja.
*/

CREATE OR REPLACE TRIGGER  ADD_ADJETIVO
    BEFORE INSERT ON Adjetivos
        FOR EACH ROW
            DECLARE
                adje varchar(5);
                numer number;
            BEGIN
                SELECT MAX(no_adjetivo) INTO numer FROM Adjetivos;
                if numer=0 then 
                    :NEW.no_adjetivo:=1;
                ELSE
                    :NEW.no_adjetivo:=numer+1;
                END if;
                SELECT tipo INTO adje FROM Opinion JOIN Adjetivos ON(Opinion.numero=Adjetivos.no_adjetivo);
                if adje='E' then
                    :new.adjetivo:='me encanta';
                END if;
                if adje='G' then
                    :new.adjetivo:='interesante';
                END if;
                if adje='C' then
                    :new.adjetivo:='confuso';
                END if;
                if adje='e N' then
                    :new.adjetivo:='inapropiado';
                END if;
            END;
drop trigger ADD_ADJETIVO;
insert into Adjetivos (no_adjetivo) values (5);

/*Modificar detalle  de opinion*/

CREATE TRIGGER modificar 
    BEFORE INSERT ON Opinion
        FOR EACH ROW
            BEGIN
                IF :OLD.detalle<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
            END;

UPDATE Opinion SET detalle=NULL;

/*Eliminar*/

ALTER TABLE Opinion DROP CONSTRAINT  FK_Opinion_Perfil;

ALTER TABLE Opinion ADD CONSTRAINT FK_Opinion_Perfil FOREIGN KEY (perfil)
REFERENCES Perfil(correo) ON DELETE CASCADE;

/*----------------------------------------------*/


/*Mantener Contenido*/

/*las fechas de los logros se deben asignar automaticamente*/
CREATE OR REPLACE TRIGGER fechas_logros
  BEFORE INSERT ON Contenido 
      FOR EACH ROW 
	    DECLARE
          fecha DATE;
		BEGIN 
          SELECT  TO_date(SYSDATE, 'YYYY-MM-DD') INTO :new.fecha FROM dual;
        END;      
drop trigger fechas_logros;
insert into Contenido (nombre,url,tipo,filtro) values (N'Sebastian Molina', N'juan.nieto-mo@mail.edu.co', N'F',N'Codigo');

/*Si no se indica el tipo se asume que es una foto*/

CREATE TRIGGER INDICAR
    BEFORE INSERT ON Contenido
        FOR EACH ROW
            BEGIN
                IF :old.tipo<>'V' or :old.tipo<>'A' THEN
                    :new.tipo:='F';
                END IF;
            END;
drop trigger INDICAR;
insert into Contenido (nombre,url,tipo,filtro) values (N'Paula Valencia', N'paula.valencia@mail.edu.co', N'H',N'Codigo');

/*Los contenidos se pueden eliminar si nadie los ha consultado*/
ALTER TABLE Contenido DROP CONSTRAINT FK_Contenido_Perfil ;

ALTER TABLE Contenido ADD CONSTRAINT FK_Contenido_Perfil FOREIGN KEY (url)
REFERENCES Perfil(correo) ON DELETE CASCADE;



             
                
