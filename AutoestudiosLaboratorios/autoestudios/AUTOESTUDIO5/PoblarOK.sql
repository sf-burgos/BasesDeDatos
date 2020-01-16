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