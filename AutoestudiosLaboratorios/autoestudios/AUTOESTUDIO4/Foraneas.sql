/*booking*/
ALTER TABLE booking  ADD CONSTRAINT FK_booking_room  FOREIGN KEY(room_no) REFERENCES room(id);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_guest  FOREIGN KEY(guest_id) REFERENCES guest(id);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_rate  FOREIGN KEY(occupants,room_type_requested) REFERENCES rate(occupancy,room_type);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_room_type  FOREIGN KEY(room_type_requested) REFERENCES room_type(id);

/*rate*/
ALTER TABLE rate  ADD CONSTRAINT FK_rate_room_type FOREIGN KEY(room_type) REFERENCES room_type(id);
/*room*/
ALTER TABLE room  ADD CONSTRAINT FK_room_room_type FOREIGN KEY(room_type) REFERENCES room_type(id);
/*extra*/
ALTER TABLE extra  ADD CONSTRAINT FK_extra_booking FOREIGN KEY(booking_id) REFERENCES booking(booking_id);

