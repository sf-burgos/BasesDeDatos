/*	1. las restricciones declarativas sobre tuplan ya estan enchas, eran necesarias para crear las tablas
    ahora trabajaremos la de tuplas, para ello usaremos checks. */

/*Tuplas*/
ALTER TABLE booking ADD CONSTRAINT CK_booking_room_type_requested CHECK (room_type_requested IN ('family','single','double', 'twin'));


/*2. validacion de los datos con ejemplos*/
/*AtributosNoOk*/
/*primero intentaremos ver como funciona las restricciones en los atributos. se intentara introducir una fecha como varchar*/
INSERT INTO booking VALUES(5346, '2016-12-03',206,1048,2,'double',1,'14:00');


/*TuplasNoOk*/
/*Ahora probare en las tuplas que cree intentado colocar un numero de cuarto que no este entre los limites*/
INSERT INTO booking VALUES(5346, DATE'2016-12-03',211,1048,2,'double',1,'14:00');
/*Ahora se probara en las tuplas que cree intentado colocar un tipo de cuarto que no este entre los limites*/
INSERT INTO booking VALUES(5346, DATE'2016-12-03',211,1048,2,'thebiggest',1,'14:00');

/*Los atributosOk y TuplasOk ya estan generadas en poblar*/

/*verificar que el numero de habitaciones por piso (meximo 10) y que solo tengo 5 pisos, lo que quiere decir es que el numero maximo que puede aparecer es 510.*/
ALTER TABLE room ADD CONSTRAINT CK_room_id CHECK ((id>=101 AND id<=110) OR (id>=201 AND id<=210) OR (id>=301 AND id<=310) or (id>=401 AND id<=410) or (id>=501 AND id<=510));

