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
  max_occupancy number(10) not null,
  number_bed_double number(2),
  number_bed_simple number(2),
  number_bed_cabin number(2),
  floor_room varchar(100),
  bathtub varchar(100),
  views_room varchar(100),
  decoration varchar(100),
  pattern_curtain varchar(100),
  channels varchar(100),
  code_comments int);

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
  date_comment varchar(20), 
  star NUMBER(1),
  justification varchar (100));
 
 CREATE TABLE decoracion(
	 id number(10),
	 id_room int,
	 name_obra varchar(100),
	 clas varchar(100),
	 author varchar(100),
	 nationality varchar(100));
 
 
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



 /*SELECT CONCAT('INSERT INTO room_type VALUES(''',id,''',''',description,''');' ) FROM room_type*/
INSERT INTO room_type VALUES('double','Fabulously appointed double room.');
INSERT INTO room_type VALUES('family','Superior appartment for up to 3 people.');
INSERT INTO room_type VALUES('single','Luxury accomodation suitable for one person.');
INSERT INTO room_type VALUES('twin','Superb room with two beds.');

/*SELECT CONCAT('INSERT INTO rate VALUES(''',room_type,''',',occupancy,',',amount,');' ) FROM rate*/
INSERT INTO rate VALUES('double',1,56.00);
INSERT INTO rate VALUES('double',2,72.00);
INSERT INTO rate VALUES('family',1,56.00);
INSERT INTO rate VALUES('family',2,72.00);
INSERT INTO rate VALUES('family',3,84.00);
INSERT INTO rate VALUES('single',1,48.00);
INSERT INTO rate VALUES('twin',1,50.00);
INSERT INTO rate VALUES('twin',2,72.00);

/*SELECT CONCAT('INSERT INTO room VALUES(',id,',''',room_type,''',',max_occupancy,');' ) FROM room*/


INSERT INTO room VALUES(101,'single',1,0,1,0,'tapete','bañera hidromasaje','mar',0001,'blanco','satelite',100101);
INSERT INTO room VALUES(102,'double',2,1,0,0,'tapete','bañera','mar',0002,'cafe','satelite',100102);
INSERT INTO room VALUES(103,'double',2,0,2,0,'madera','ducha lluvia','piscina',0003,'cafe','cable',100103);
INSERT INTO room VALUES(104,'double',2,0,2,0,'baldosa','ducha','interior',0004,'blanco','cable',100104);
INSERT INTO room VALUES(105,'family',3,1,2,1,'tapete','ducha lluvia','montaña',0005,'blanco','satelite',100105);
INSERT INTO room VALUES(106,'double',2,1,0,0,'madera','bañera hidromasaje','interior',0006,'blanco','cable',100106);
INSERT INTO room VALUES(107,'double',2,0,2,0,'baldosa','bañera','mar',0007,'blanco','cable',100107);
INSERT INTO room VALUES(108,'double',2,1,0,0,'madera','ducha','jardin',0008,'cafe','cable',100108);
INSERT INTO room VALUES(109,'double',2,0,2,0,'tapete','bañera','mar',0009,'blanco','satelite',100109);
INSERT INTO room VALUES(110,'double',2,0,2,0,'madera','lluvia','jardin',0010,'blanco','satelite',100110);
INSERT INTO room VALUES(201,'single',1,0,1,0,'tapete','bañera hidromasaje','mar',0011,'blanco','satelite',100201);
INSERT INTO room VALUES(202,'double',2,1,0,0,'baldosa','bañera','piscina',0012,'blanco','cable',100202);
INSERT INTO room VALUES(203,'double',2,0,2,0,'baldosa','lluvia','montaña',0013,'cafe','cable',100203);
INSERT INTO room VALUES(204,'double',2,1,0,0,'tapete','bañera hidromasaje','interior',0014,'blanco','satelite',100204);
INSERT INTO room VALUES(205,'family',3,2,0,1,'tapete','ducha','mar',0015,'blanco','satelite',100205);
INSERT INTO room VALUES(206,'double',2,0,2,0,'baldosa','ducha lluvia','interior',0016,'blanco','cable',100206);
INSERT INTO room VALUES(207,'double',2,1,0,0,'madera','bañera hidromasaje','piscina',0017,'cafe','cable',100207);
INSERT INTO room VALUES(208,'double',2,0,2,0,'baldosa','bañera','mar',0018,'cafe','satelite',100208);
INSERT INTO room VALUES(209,'double',2,0,2,0,'madera','ducha','interior',0019,'blanco','satelite',100209);
INSERT INTO room VALUES(210,'double',2,1,0,0,'tapete','bañera','piscina',0020,'blanco','cable',100210);
INSERT INTO room VALUES(301,'single',1,0,1,0,'tapete','bañera hidromasaje','mar',0021,'blanco','satelite',100301);
INSERT INTO room VALUES(302,'double',2,0,2,0,'madera','ducha lluvia','montaña',0022,'cafe','satelite',100302);
INSERT INTO room VALUES(303,'double',2,1,0,0,'baldosa','ducha','interior',0023,'blanco','satelite',100303);
INSERT INTO room VALUES(304,'double',2,0,2,0,'tapete','bañera hidromasaje','montaña',0024,'cafe','cable',100304);
INSERT INTO room VALUES(305,'family',3,1,0,2,'madera','bañera hidromasaje','mar',0025,'blanco','satelite',100305);
INSERT INTO room VALUES(306,'double',2,1,0,0,'baldosa','ducha','jardin',0026,'blanco','satelite',100306);
INSERT INTO room VALUES(307,'double',2,0,2,0,'madera','bañera','jardin',0027,'cafe','satelite',103007);
INSERT INTO room VALUES(308,'double',2,0,2,0,'tapete','bañera hidromasaje','montaña',0028,'cafe','cable',100308);
INSERT INTO room VALUES(309,'double',2,1,0,0,'baldosa','ducha','interior',0029,'blanco','satelite',100309);
INSERT INTO room VALUES(310,'double',2,1,0,0,'tapete','bañera hidromasaje','mar',0030,'blanco','satelite',100310);

/*SELECT CONCAT('INSERT INTO guest VALUES(',id,',''',first_name,''',''',last_name,''',''',address,''');' ) FROM guest*/
INSERT INTO guest VALUES(1001,'Jim','Dowd','Lewisham West and Penge');
INSERT INTO guest VALUES(1002,'Lyn','Brown','West Ham');
INSERT INTO guest VALUES(1003,'Ann','Clwyd','Cynon Valley');
INSERT INTO guest VALUES(1004,'Nic','Dakin','Scunthorpe');
INSERT INTO guest VALUES(1005,'Pat','Glass','North West Durham');
INSERT INTO guest VALUES(1006,'Kate','Hoey','Vauxhall');
INSERT INTO guest VALUES(1007,'Mike','Kane','Wythenshawe and Sale East');
INSERT INTO guest VALUES(1008,'John','Mann','Bassetlaw');
INSERT INTO guest VALUES(1009,'Joan','Ryan','Enfield North');
INSERT INTO guest VALUES(1010,'Cat','Smith','Lancaster and Fleetwood');
INSERT INTO guest VALUES(1011,'Mark','Tami','Alyn and Deeside');
INSERT INTO guest VALUES(1012,'Keith','Vaz','Leicester East');
INSERT INTO guest VALUES(1013,'Ian','Austin','Dudley North');
INSERT INTO guest VALUES(1014,'Liam','Byrne','Birmingham, Hodge Hill');
INSERT INTO guest VALUES(1015,'Ann','Coffey','Stockport');
INSERT INTO guest VALUES(1016,'Neil','Coyle','Bermondsey and Old Southwark');
INSERT INTO guest VALUES(1017,'John','Cryer','Leyton and Wanstead');
INSERT INTO guest VALUES(1018,'Peter','Dowd','Bootle');
INSERT INTO guest VALUES(1019,'Paul','Flynn','Newport West');
INSERT INTO guest VALUES(1020,'Kate','Green','Stretford and Urmston');
INSERT INTO guest VALUES(1021,'Sue','Hayman','Workington');
INSERT INTO guest VALUES(1022,'Dan','Jarvis','Barnsley Central');
INSERT INTO guest VALUES(1023,'Peter','Kyle','Hove');
INSERT INTO guest VALUES(1024,'Ian','Lavery','Wansbeck');
INSERT INTO guest VALUES(1025,'Rob','Marris','Wolverhampton South West');
INSERT INTO guest VALUES(1026,'Ian','Mearns','Gateshead');
INSERT INTO guest VALUES(1027,'Ian','Murray','Edinburgh South');
INSERT INTO guest VALUES(1028,'Lisa','Nandy','Wigan');
INSERT INTO guest VALUES(1029,'Jeff','Smith','Manchester, Withington');
INSERT INTO guest VALUES(1030,'Nick','Smith','Blaenau Gwent');
INSERT INTO guest VALUES(1031,'Owen','Smith','Pontypridd');
INSERT INTO guest VALUES(1032,'Jo','Stevens','Cardiff Central');
INSERT INTO guest VALUES(1033,'Tom','Watson','West Bromwich East');
INSERT INTO guest VALUES(1034,'Hilary','Benn','Leeds Central');
INSERT INTO guest VALUES(1035,'Dawn','Butler','Brent Central');
INSERT INTO guest VALUES(1036,'Mary','Creagh','Wakefield');
INSERT INTO guest VALUES(1037,'Jon','Cruddas','Dagenham and Rainham');
INSERT INTO guest VALUES(1038,'Wayne','David','Caerphilly');
INSERT INTO guest VALUES(1039,'Jack','Dromey','Birmingham, Erdington');
INSERT INTO guest VALUES(1040,'Maria','Eagle','Garston and Halewood');
INSERT INTO guest VALUES(1041,'Frank','Field','Birkenhead');
INSERT INTO guest VALUES(1042,'Helen','Hayes','Dulwich and West Norwood');
INSERT INTO guest VALUES(1043,'John','Healey','Wentworth and Dearne');
INSERT INTO guest VALUES(1044,'Dr Rupa','Huq','Ealing Central and Acton');
INSERT INTO guest VALUES(1045,'Helen','Jones','Warrington North');
INSERT INTO guest VALUES(1046,'Liz','Kendall','Leicester West');
INSERT INTO guest VALUES(1047,'Clive','Lewis','Norwich South');
INSERT INTO guest VALUES(1048,'Holly','Lynch','Halifax');
INSERT INTO guest VALUES(1049,'Liz','McInnes','Heywood and Middleton');
INSERT INTO guest VALUES(1050,'Jim','McMahon','Oldham West and Royton');

/*SELECT CONCAT(
'INSERT INTO booking VALUES(',booking_id,', DATE''',booking_date,''',',room_no,',',guest_id,',',occupants,',','''',room_type_requested,''',',nights,',''',arrival_time,''');') FROM booking WHERE guest_id between 1001 and 1050
*/

INSERT INTO booking VALUES(5361, DATE'2016-12-12',301,1001,1,'single',1,'12:00');
INSERT INTO booking VALUES(5237, DATE'2016-11-28',307,1003,1,'double',1,'14:00');
INSERT INTO booking VALUES(5022, DATE'2016-11-03',302,1009,2,'double',2,'18:00');
INSERT INTO booking VALUES(5047, DATE'2016-11-10',207,1014,2,'double',4,'18:00');
INSERT INTO booking VALUES(5164, DATE'2016-11-19',204,1015,2,'double',5,'22:00');
INSERT INTO booking VALUES(5149, DATE'2016-11-10',309,1017,2,'double',1,'21:00');
INSERT INTO booking VALUES(5258, DATE'2016-12-01',208,1017,2,'double',5,'21:00');
INSERT INTO booking VALUES(5106, DATE'2016-11-13',206,1019,1,'double',3,'20:00');
INSERT INTO booking VALUES(5132, DATE'2016-11-15',202,1020,2,'double',1,'15:00');
INSERT INTO booking VALUES(5006, DATE'2016-11-03',106,1021,1,'double',3,'21:00');
INSERT INTO booking VALUES(5311, DATE'2016-12-03',201,1021,1,'single',4,'18:00');
INSERT INTO booking VALUES(5001, DATE'2016-11-03',101,1027,1,'single',7,'13:00');
INSERT INTO booking VALUES(5013, DATE'2016-11-03',203,1027,1,'double',6,'19:00');
INSERT INTO booking VALUES(5042, DATE'2016-11-05',202,1028,2,'double',4,'14:00');
INSERT INTO booking VALUES(5151, DATE'2016-11-22',101,1037,1,'single',5,'16:00');
INSERT INTO booking VALUES(5143, DATE'2016-11-10',303,1038,2,'double',4,'23:00');
INSERT INTO booking VALUES(5052, DATE'2016-11-05',302,1039,2,'double',5,'15:00');
INSERT INTO booking VALUES(5194, DATE'2016-11-24',204,1040,1,'double',5,'20:00');
INSERT INTO booking VALUES(5023, DATE'2016-11-03',303,1041,1,'double',1,'15:00');
INSERT INTO booking VALUES(5123, DATE'2016-11-15',103,1041,2,'double',4,'22:00');
INSERT INTO booking VALUES(5309, DATE'2016-11-30',109,1047,1,'double',3,'12:00');
INSERT INTO booking VALUES(5346, DATE'2016-12-03',206,1048,2,'double',1,'14:00');
INSERT INTO booking VALUES(5158, DATE'2016-11-17',108,1049,1,'double',1,'22:00');
INSERT INTO booking VALUES(5268, DATE'2016-11-25',308,1050,2,'double',4,'21:00');

/*
SELECT CONCAT(
'INSERT INTO extra VALUES(',extra_id,',',extra.booking_id,',''',description,''',',amount,');') 

FROM extra JOIN booking ON (extra.booking_id=booking.booking_id)
WHERE extra.booking_id IN (SELECT booking_id FROM booking WHERE guest_id between 1001 and 1050)
*/

INSERT INTO extra VALUES(500101,5001,'Breakfast x 7',63.00);
INSERT INTO extra VALUES(502202,5022,'Phone Calls £3.19',3.19);
INSERT INTO extra VALUES(502301,5023,'Breakfast x 1',9.00);
INSERT INTO extra VALUES(502302,5023,'Phone Calls £0.50',0.50);
INSERT INTO extra VALUES(504701,5047,'Breakfast x 10',90.00);
INSERT INTO extra VALUES(505201,5052,'Breakfast x 5',45.00);
INSERT INTO extra VALUES(510601,5106,'Breakfast x 5',45.00);
INSERT INTO extra VALUES(513202,5132,'Phone Calls £4.24',4.24);
INSERT INTO extra VALUES(515801,5158,'Breakfast x 6',54.00);
INSERT INTO extra VALUES(516402,5164,'Phone Calls £1.70',1.70);
INSERT INTO extra VALUES(523701,5237,'Breakfast x 3',27.00);
INSERT INTO extra VALUES(523702,5237,'Phone Calls £4.54',4.54);
INSERT INTO extra VALUES(531102,5311,'Phone Calls £1.40',1.40);
INSERT INTO extra VALUES(534601,5346,'Breakfast x 5',45.00);
INSERT INTO extra VALUES(534602,5346,'Phone Calls £1.56',1.56);

INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (0, 100206, 'Perfect stay!', '2018-12-27', 3, 'Service with a smile!');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (1, 100104, 'I will definitely make this my go-to hotel in Rapid City', '2018-07-21', 1, 'Great time');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (2, 100105, 'Service with a smile!', '2018-08-28', 5, 'Upward bound group');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (3, 100309, 'Great time', '2018-10-02', 4, 'I will definitely make this my go-to hotel in Rapid City');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (4, 100306, 'Wonderful base in Rome', '2019-03-30', 3, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (5, 100301, 'Great time', '2018-05-01', 5, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (6, 100110, 'Great port in a storm', '2018-04-19', 3, 'Perfect stay!');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (7, 100304, 'Highly recommended', '2018-08-09', 4, 'I will definitely make this my go-to hotel in Rapid City');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (8, 100106, 'Wonderful base in Rome', '2019-03-15', 4, 'Service with a smile!');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (9, 1003010, 'Perfect stay!', '2018-04-11', 3, 'I will definitely make this my go-to hotel in Rapid City');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (10, 100102, 'Excellent hotel', '2019-01-12', 5, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (11, 100105, 'I will definitely make this my go-to hotel in Rapid City', '2019-03-01', 2, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (12, 100208, 'Upward bound group', '2018-10-25', 1, 'Wonderful base in Rome');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (13, 100204, 'Wonderful base in Rome', '2018-10-04', 3, 'Excellent hotel');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (14, 100307, 'Service with a smile!', '2018-06-02', 5, 'Wonderful base in Rome');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (15, 100201, 'Highly recommended', '2019-03-05', 4, 'Great time');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (16, 100208, 'Great time', '2018-09-24', 0, 'Wonderful base in Rome');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (17, 100107, 'Great port in a storm', '2018-10-21', 5, 'Great time');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (18, 100301, 'Great port in a storm', '2019-01-08', 0, 'Plesant stay');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (19, 1003010, 'Highly recommended', '2019-03-11', 2, 'Great time');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (20, 100303, 'Service with a smile!', '2018-06-28', 0, 'Upward bound group');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (21, 100204, 'Highly recommended', '2018-07-23', 0, 'I will definitely make this my go-to hotel in Rapid City');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (22, 100208, 'Service with a smile!', '2018-10-12', 5, 'Plesant stay');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (23, 100109, 'I will definitely make this my go-to hotel in Rapid City', '2018-05-10', 2, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (24, 100306, 'Great time', '2018-09-08', 1, 'Upward bound group');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (25, 100303, 'I will definitely make this my go-to hotel in Rapid City', '2018-08-04', 1, 'Amazing service, quality rooms, great breakfast, wonderful');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (26, 100108, 'Great time', '2019-03-05', 0, 'Service with a smile!');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (27, 100206, 'Great time', '2019-04-01', 2, 'Great port in a storm');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (28, 100109, 'Great time', '2018-10-21', 4, 'Perfect stay!');
INSERT INTO comments (id, id_comment, comment_room, date_comment, star, justification) VALUES (29, 100304, 'Great port in a storm', '2018-05-28', 4, 'Perfect stay!');

insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (0, 203, 'Emmanuel''s Gift', 'Colores_audaces', 'Barr Killik', 'HR');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (1, 201, 'Absolute Aggression', 'decorado_neutro', 'Niven Odd', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (2, 204, 'Duel at Silver Creek, The', 'pintura', 'Efren Shires', 'ID');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (3, 309, 'Twilight People, The', 'escultura', 'Ulysses Last', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (4, 110, 'Broken Windows', 'pintura', 'Maressa Emloch', 'UA');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (5, 307, 'Something the Lord Made', 'techo_elevado', 'Mikey De Malchar', 'TH');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (6, 206, 'Hells Angels on Wheels', 'techo_elevado', 'Lorne Mabbitt', 'PT');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (7, 202, 'Archie To Riverdale and Back Again', 'escultura', 'Maisie Crossingham', 'RU');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (8, 210, 'Most Dangerous Man in America: Daniel Ellsberg and the Pentagon Papers, The', 'Colores_audaces', 'Sara O''Shevlan', 'HN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (9, 205, 'Dossier 51 (Dossier 51, Le)', 'techo_elevado', 'Kassia Mougeot', 'PL');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (10, 103, 'Shinjuku Incident (San suk si gin)', 'techo_elevado', 'Raeann Whitington', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (11, 202, 'TerrorStorm: A History of Government-Sponsored Terrorism', 'techo_elevado', 'Bess Bigley', 'RU');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (12, 209, 'Valentino', 'escultura', 'Benedikta Booton', 'BY');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (13, 102, 'Manhattan Murder Mystery', 'Colores_audaces', 'Mariska Pulsford', 'RU');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (14, 302, 'Stage Fright (Deliria)', 'techo_elevado', 'Daniel Wallington', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (15, 205, 'Wishmaster 3: Beyond the Gates of Hell', 'decorado_neutro', 'Domeniga Vell', 'SE');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (16, 206, 'Spanish Earth, The', 'Colores_audaces', 'Leila Kinkaid', 'PT');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (17, 104, 'Pootie Tang', 'Colores_audaces', 'Konstance Ferney', 'ZA');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (18, 206, 'Billy''s Holiday', 'pintura', 'Gilberto Niche', 'TH');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (19, 204, 'The Facts of Murder', 'escultura', 'Alfie Jannequin', 'FI');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (20, 202, 'When Ladies Meet', 'decorado_neutro', 'Buffy Agett', 'PH');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (21, 201, 'Off Beat', 'decorado_neutro', 'Allison Broxholme', 'PK');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (22, 301, 'Arise, My Love', 'techo_elevado', 'Dylan Grumell', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (23, 105, 'Three Monkeys (�� maymun)', 'decorado_neutro', 'Rivalee Bielefeld', 'JP');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (24, 204, 'Mysterious Object at Noon (Dokfa nai meuman)', 'Colores_audaces', 'Viola Skiggs', 'UY');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (25, 302, 'Head Office', 'pintura', 'Sheilakathryn Hackett', 'JP');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (26, 302, 'Iron Man', 'escultura', 'Gabey Bramhall', 'CN');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (27, 201, 'Saturday Night and Sunday Morning', 'escultura', 'Nathaniel Netherclift', 'US');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (28, 207, 'The White Haired Witch of Lunar Kingdom', 'techo_elevado', 'Maximilien Iacomelli', 'US');
insert into decoracion (id, id_room , name_obra, clas, author, nationality) values (29, 305, 'President''s Man, The', 'pintura', 'Layne Cornelisse', 'BR');

/*CONSULTANDO*/
/*Los habitaciones con s�lo una cama doble*/
SELECT id from room WHERE number_bed_double=1;
/*Los habitaciones m�s econ�micas con vista al mar y a la monta�a*/
SELECT id,amount FROM RATE JOIN ROOM ON (rate.room_type=room.room_type) WHERE views_room IN ('monta�a', 'mar') ORDER BY amount;
/*Los tipos de habitaciones que ofrecen canal sat�lite de TV*/
SELECT id FROM RATE JOIN ROOM ON (rate.room_type=room.room_type) WHERE channels='satelite';


/*Nombres de los autores de la decoracion de las habitaciones*/}
SELECT author FROM decoracion;

/*numero de habitaciones con 5 estrellas*/
SELECT COUNT(star) FROM comments  WHERE star=5 GROUP BY star;  
