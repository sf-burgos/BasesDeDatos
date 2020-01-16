/*Punto D parte 2.*/

/*Quiero asignar una materia que tenga una longiutd de sigla mayor a 3 lo cual no se deberia poder por restriccion*/
insert into Asignaturas values (N'PIMO',N'Programacion modular',N'Basico');

/*quiero ingresasr una asignatura como valor nulo*/
insert into Asignaturas values (null,N'Programacion modular',N'Basico');

/*Quiero ingresar una fecha sin avizar que la el dato es tipo fecha*/
insert into Contenido values (N'Sebastian Nieto', '2019-03-06', N'sebas.rechonchito.com', N'F', N'python',N'Codigo');

/*Querio llenar la tabla sin escribir un dato de mas*/
insert into Contenido values (date'2019-03-06', N'sebas.rechonchito.com', N'F', N'python',N'Codigo');

/*Querio colocar no la magnitud del numero si no como se escribe*/
insert into Temporal values(N'quince',N'F',N'Paula Guevara');

/*-----------------------*/
/*Punto D parte 3.*/

/*Ingresar un correo con solo un punto*/
insert into Contenido values(N'sebastian Nieto', date'2019-03-06', N'sebasrechonchito.com');

/*En el dato tipo opinion colocamos una letra que no tenems especificada en nuestro modelo*/
insert into Opinion values (1, date'2019-03-06', N'P', N'divertido', null, N'juan.nieto-mo@mail.edu.co', N'Sebastian Nieto');

/*Coloco un nivel que no existe en la tabla*/
insert into Trata values(N':V','80',N'Programacion',N'PIM');

/*Poner un idioma como no se debe escribir*/
insert into Temporal values(127,N'i',N'Sebastian Nieto');

/*Poner un un tipo que no exista para guardar informacion.*/
insert into Contenido values (N'Sebastian Nieto', date'2019-03-06', N'sebas.rechonchito.com', N'Z', N'python',N'Codigo');
