
/*ACCIONES DE REFERENCIA 
booking depende de room, guest, rate, room_type
*/

ALTER TABLE booking DROP CONSTRAINT  FK_booking_room;
ALTER TABLE booking  ADD CONSTRAINT FK_booking_room 
FOREIGN KEY(room_no) REFERENCES room(id) ON DELETE CASCADE;

ALTER TABLE booking DROP CONSTRAINT  FK_booking_guest;
ALTER TABLE booking  ADD CONSTRAINT FK_booking_guest
FOREIGN KEY(guest_id) REFERENCES guest(id) ON DELETE CASCADE;

ALTER TABLE booking DROP CONSTRAINT  FK_booking_rate;
ALTER TABLE booking  ADD CONSTRAINT FK_booking_rate
FOREIGN KEY(rate) REFERENCES rate(room_type,) ON DELETE CASCADE;