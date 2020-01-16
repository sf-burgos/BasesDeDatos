insert into Perfil values(N'juan.nieto-mo@mail.edu.co',N'Sebastian Nieto',0);
insert into Perfil values(N'brayan.burgos@mail.edu.co',N'Brayan Burgos',0);
insert into Perfil values(N'paula.guevara@mail.edu.co',N'Paula Guevara',1);
insert into Perfil values(N'camila.rojas@mail.edu.co',N'Camila Rojas',0);
insert into Perfil values(N'paula.valencia@mail.edu.co',N'Paula Valencia',0);

insert into Tema values(N'Programacion',N'juan.nieto-mo@mail.edu.co');
insert into Tema values(N'Objetos',N'brayan.burgos@mail.edu.co');
insert into Tema values(N'Basico',N'paula.guevara@mail.edu.co');

insert into Es_Subtema values (N'Programacion',N'Objetos');
insert into Es_Subtema values (N'Basico',N'Objetos');
insert into Es_Subtema values (N'Basico',N'Programacion');

insert into Asignatura values(N'PIM',N'prog_nmodular',N'Programacion');
insert into Asignatura values(N'POB',N'prog_Objetos',N'Objetos');
insert into Asignatura values(N'PIB',N'prog_Basica',N'Basico');

insert into Trata values(N'P','80',N'Programacion',N'PIM');
insert into Trata values(N'A','15',N'Objetos',N'POB');
insert into Trata values(N'P','8',N'Basico',N'PIB');

insert into Es_Prerrequisito values (N'Programacion',N'Obejtos',N'POB');
insert into Es_Prerrequisito values (N'Basico',N'Programacion',N'POB');
insert into Es_Prerrequisito values (N'Programacion',N'Basico',N'POB');

insert into Palabras values (N'Programacion',N'Complicado');
insert into Palabras values (N'Objetos',N'Dificil');
insert into Palabras values (N'Basico',N'Facil');

insert into Contenido values (N'Sebastian Nieto', date'2019-03-06', N'juan.nieto-mo@mail.edu.co', N'F',N'Codigo');
insert into Contenido values (N'Brayan Burgos', date'2019-03-06', N'brayan.burgos@mail.edu.co',N'V',N'logica');
insert into Contenido values (N'Paula Guevara',date'2019-03-06',N'paula.guevara@mail.edu.co',N'V',N'bases');

insert into Filtro values(N'Codigo',N'Esta enfocada en estructuras de datos',N'Sebastian Nieto');
insert into Filtro values(N'logica',N'Permite desarrollar la programacion logica',N'Brayan Burgos');
insert into Filtro values(N'bases',N'Permite el desarrollo de una base de datos',N'Paula Guevara');

insert into Es_de values (N'Sebastian Nieto',N'Codigo');
insert into Es_de values (N'Brayan Burgos',N'logica');
insert into Es_de values (N'Paula Guevara',N'bases');

insert into Temporal values(127,N'E',N'Sebastian Nieto');
insert into Temporal values(10,N'I',N'Brayan Burgos');
insert into Temporal values(15,N'F',N'Paula Guevara');

insert into Etiquetas values (N'Sebastian Nieto',N'divertido');
insert into Etiquetas values (N'Brayan Burgos',N'creativo');
insert into Etiquetas values (N'Paula Guevara',N'detallado');

insert into Opinion values (1, date'2019-03-06', N'E', N'divertido', null, N'juan.nieto-mo@mail.edu.co', N'Sebastian Nieto');
insert into Opinion values (2, date'2019-03-06', N'G', N'interesante', null, N'brayan.burgos@mail.edu.co', N'Brayan Burgos');
insert into Opinion values (3, date'2019-03-06', N'G', N'detallado', null, N'paula.guevara@mail.edu.co', N'Paula Guevara');

insert into Adjetivos values (1,N'divertido');
insert into Adjetivos values (2,N'interesante');
insert into Adjetivos values (3,N'detallado');
insert into Adjetivos values (4,N'jj');

insert into Consulta values(N'juan.nieto-mo@mail.edu.co',N'Sebastian Nieto',date'2019-03-06');
insert into Consulta values(N'brayan.burgos@mail.edu.co',N'Brayan Burgos',date'2019-03-06');
insert into Consulta values(N'paula.guevara@mail.edu.co',N'Paula Guevara',date'2019-03-06');







