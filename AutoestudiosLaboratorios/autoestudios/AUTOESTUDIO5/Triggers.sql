CREATE OR REPLACE TRIGGER agregarTG
    BEFORE INSERT ON booking
    FOR EACH ROW
    DECLARE
        xnumero NUMBER;
        xhabitacion VARCHAR(6);
    BEGIN 
        SELECT occupants INTO xnumero FROM booking;
        SELECT room_type_requested INTO xhabitacion FROM booking;
        IF (xnumero<=2 and xnumero>0 and xhabitacion ='double') or(xnumero<=3 and xnumero>0 and xhabitacion ='family') or (xnumero=1 and xnumero>0 and xhabitacion ='single')or(xnumero<=2 and xnumero>0 and xhabitacion ='twin')THEN
            :new.occupants:= xnumero;
            :new.room_type_requested:= xhabitacion;
        ELSE
            raise_application_error(-20005,'No se puede insertar');
        END IF;
    END;   
      
   
CREATE OR REPLACE TRIGGER bookingTG
    before insert on booking
    for each row
    Declare
        xnumero Number;
        xfecha Date;
    begin
        select max(booking_id) into xnumero from booking;
        if (xnumero is null) then
            xnumero := 1;
        else
            xnumero := xnumero+1;
        end if;
        select (current_date) into xfecha from dual;
        :new.booking_id := xnumero;
        :new.booking_date := xfecha;
    end;
/

