/*primarias*/
/*ALTER TABLE booking drop CONSTRAINT PK_booking_id*/
ALTER TABLE room_type 
ADD CONSTRAINT PK_room_type PRIMARY KEY (id);

ALTER TABLE extra 
ADD CONSTRAINT PK_extra PRIMARY KEY (extra_id);

ALTER TABLE guest 
ADD CONSTRAINT PK_guest PRIMARY KEY (id);

ALTER TABLE booking 
ADD CONSTRAINT PK_booking PRIMARY KEY (booking_id);

ALTER TABLE rate 
ADD CONSTRAINT PK_rate PRIMARY KEY (occupancy,room_type);

ALTER TABLE room 
ADD CONSTRAINT PK_room PRIMARY KEY (id);

