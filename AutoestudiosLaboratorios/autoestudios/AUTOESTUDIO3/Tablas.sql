
CREATE TABLE booking (
  booking_id int NOT NULL,
  booking_date date DEFAULT NULL,
  room_no int DEFAULT NULL,
  guest_id int NOT NULL,
  occupants int NOT NULL,
  room_type_requested varchar(6) DEFAULT NULL,
  nights int NOT NULL,
  arrival_time varchar(5) DEFAULT NULL);


CREATE TABLE room_type (
  id varchar(6) NOT NULL,
  description varchar(100)); 
  
CREATE TABLE rate (
  room_type varchar(6) ,
  occupancy int,
  amount decimal(10,2));
  
CREATE TABLE room (
  id int NOT NULL,
  room_type varchar(6));

CREATE TABLE guest (
  id int NOT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  address varchar(50) DEFAULT NULL);

CREATE TABLE extra (
  extra_id int NOT NULL,
  booking_id int DEFAULT NULL,
  description varchar(50));
