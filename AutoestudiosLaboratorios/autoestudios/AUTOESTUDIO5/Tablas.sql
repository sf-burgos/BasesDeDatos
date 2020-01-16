
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
  room_type varchar(6),
  max_occupancy number(10) not null);
  number_bed_double number(2);
  number_bed_simple number(2);
  number_bed_cabin number(2);
  floor_room varchar(100);
  bathtub varchar(100);
  views varchar(100);
  decoration varchar(100);
  pattern_curtain varchar(100);
  channels varchar(100)

CREATE TABLE guest (
  id int NOT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  address varchar(50) DEFAULT NULL);

CREATE TABLE extra (
  extra_id int NOT NULL,
  booking_id int DEFAULT NULL,
  description varchar(50),
  amount number (10,2)not null);

CREATE TABLE comments(
  id int NOT NULL,
  id_comment int NOT NULL,
  comment_room varchar(100),
  date_comment DATE, 
  star int(1),
  justification varchar (100));
 
 CREATE TABLE decoracion(
	 id number(10),
	 id_room int,
	 name varchar(100),
	 clas varchar(100),
	 author varchar(100),
	 nationality varchar(100),
 );