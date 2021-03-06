/*booking*/
ALTER TABLE booking  ADD CONSTRAINT FK_booking_1  FOREIGN KEY(room_no) REFERENCES room(id);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_2  FOREIGN KEY(guest_id) REFERENCES guest(id);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_3  FOREIGN KEY(occupants) REFERENCES rate(occupancy);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_4  FOREIGN KEY(room_type_requeted) REFERENCES room_type(id);
ALTER TABLE booking  ADD CONSTRAINT FK_booking_5  FOREIGN KEY(room_type_requeted) REFERENCES rate(room_type);
/*rate*/
ALTER TABLE rate  ADD CONSTRAINT FK_rate_1  FOREIGN KEY(room_type) REFERENCES room_type(id);
/*room*/
ALTER TABLE room  ADD CONSTRAINT FK_room_1  FOREIGN KEY(room_type) REFERENCES room_type(id);
/*extra*/
ALTER TABLE extra  ADD CONSTRAINT FK_extra_1  FOREIGN KEY(booking_id) REFERENCES booking(booking_id);