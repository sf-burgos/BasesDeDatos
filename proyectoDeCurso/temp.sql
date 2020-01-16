/*CREACION DE TABLAS CICLO 1, Fuentes verdes, modelo general*/

CREATE  TABLE libro (
	ISBN VARCHAR(50),
	Titulo VARCHAR(69),
	numero_paginas number(10),
	numero_ejemplares number(10),
	disponible number(10));
	/*precio_libro number (10,2) DEFAULT NULL);*/

CREATE TABLE Autor (
	Nombre VARCHAR(60),
	ciudad VARCHAR(50),
	pais VARCHAR(50),
	Codigo_libro_escrito VARCHAR(50));
	
CREATE TABLE clientela (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	Ref_per VARCHAR(50),
	fecha DATE);
	
CREATE TABLE Compra (
	nombre_libro VARCHAR(50),
	precio VARCHAR(50),
	codigo_libro VARCHAR(50),
	descuento  DECIMAL(3,1));

CREATE TABLE Editorial (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	telefono VARCHAR(50),
	direccion VARCHAR(50),
	correo VARCHAR(50));
	
CREATE TABLE informacion_personal (
	codigo VARCHAR(50),
	direccion VARCHAR(50),
	numero_de_telefono VARCHAR(50),
	correo VARCHAR(50),
	estudios VARCHAR(39),
	trabajo VARCHAR(50));
	

	
CREATE TABLE Referencia (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	correo VARCHAR(50),
	telefono NUMBER(37),
	direccion VARCHAR(50));
	
CREATE TABLE Usuario (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	Refencia_personal VARCHAR(50),
	fecha DATE);
	
/*PRIMARY KEYS*/

ALTER TABLE Autor 
ADD CONSTRAINT PK_Autor# PRIMARY KEY (nombre);

ALTER TABLE Clientela
ADD CONSTRAINT PK_Cliente PRIMARY KEY (codigo);

ALTER TABLE compra 
ADD CONSTRAINT PK_compracodigo PRIMARY KEY (codigo_libro);

ALTER TABLE Editorial 
ADD CONSTRAINT PK_Editorialcodigo PRIMARY KEY (codigo);


ALTER TABLE libro 
ADD CONSTRAINT PK_codigo PRIMARY KEY (ISBN);

ALTER TABLE referencia 
ADD CONSTRAINT PK_codigo_referencia PRIMARY KEY (codigo);

ALTER TABLE usuario
ADD CONSTRAINT PK_usuario PRIMARY KEY (codigo);
	
	
/*UNIQUE*/	
ALTER TABLE Clientela
ADD CONSTRAINT UK_cliente UNIQUE(nombre);

ALTER TABLE libro 
ADD CONSTRAINT UK_libro1 UNIQUE (Titulo);


/*FORANEAS*/
ALTER TABLE editorial
ADD CONSTRAINT FK_LIBRO_EDITORIAL FOREIGN KEY(codigo) references libro(ISBN);


ALTER TABLE compra
ADD CONSTRAINT FK_LIBRO_COMPRA FOREIGN KEY(codigo_libro) references libro(ISBN);

ALTER TABLE libro
ADD CONSTRAINT FK_LIBRO_autor FOREIGN KEY(ISBN) references autor (Codigo_libro_escrito);

ALTER TABLE clientela
ADD CONSTRAINT FK_clientela_infopersonal FOREIGN KEY(codigo) references informacion_personal (codigo);


/*LIBRO*/

insert into libro values(9732, 'El juguete rabioso',2434,4,0);
insert into libro values(7686, 'El nombre de la rosa',6019,5,3);
insert into libro values(1547, 'La visiÃ³n de los vencidos: relaciones indÃ­genas de la conquista',6153,9,8);
insert into libro values(4120, 'El maestro y Margarita',1424,5,1);
insert into libro values(6685, 'El SeÃ±or de los Anillos',7698,3,2);
insert into libro values(6686, 'El laberinto de la soledad',8467,7,5);
insert into libro values(3123, 'Nada',2196,1,0);
insert into libro values(7732, 'Hamlet',6805,6,0);
insert into libro values(4661,'Fahrenheit 451',9236,9,2);
insert into libro values(3125, 'Pedro PÃ¡ramo',794,10,5);
insert into libro values(9794, 'El muro',8987,8,3);
insert into libro values(8266, 'Cien aÃ±os de soledad',9758,9,4);
insert into libro values(1612, 'MÃ©xico (CÃ¡tedra Alfonso Reyes)',2846,3,0);
insert into libro values(9299, 'Los detectives salvajes',8993,4,1);
insert into libro values(9812, 'Edipo Rey',7202,8,7);
insert into libro values(8791, 'Un mundo feliz',163,10,5);
insert into libro values(7270, 'La tregua',931,6,4);
insert into libro values(3176, 'Rayuela',676,5,3);
insert into libro values(1676, 'El tÃºnel',4006,10,5);
insert into libro values(6288, '1984',5284,9,2);
insert into libro values(9888, 'Siddharta',5549,7,1);
insert into libro values(3236,'Ficciones',9774,5,3);
insert into libro values(6309, 'El Ãºltimo encuentro',9263,10,7);
insert into libro values(5805, 'Memorias',557,1,0);
insert into libro values(8880, 'AmpliaciÃ³n del campo de batalla',1844,9,6);
insert into libro values(3251, 'Las (amistades) relaciones peligrosas',6837,4,3);
insert into libro values(6323, 'PoesÃ­a en movimiento: MÃ©xico, 1915 - 1966',6838,6,3);
insert into libro values(699, 'A este lado del paraÃ­so',310,9,5);
insert into libro values(2752, 'LÃ­rica personal',2748,6,1);
insert into libro values(3785, 'Al filo del agua',6720,9,4);
insert into libro values(1748, 'Narraciones extraordinarias',5961,10,9);
insert into libro values(7394, 'Los recuerdos del porvenir',4684,4,2);
insert into libro values(2798, 'Cuentos',9680,6,3);
insert into libro values(2290, 'La casa de Bernarda Alba',7889,1,0);
insert into libro values(7411, 'Libro del desasosiego de Bernardo Soares',210,5,1);
insert into libro values(9461, 'BiografÃ­a del poder: caudillos de la RevoluciÃ³n Mexicana',6487,10,7);
insert into libro values(3319, 'El conde de Montecristo',1626,1,0);
insert into libro values(8953, 'La insoportable levedad del ser',2911,8,5);
insert into libro values(6397, 'La divina comedia',5472,10,1);
insert into libro values(4864, 'La vida es sueÃ±o',7648,4,3);
insert into libro values(777, 'La Celestina',1125,4,1);
insert into libro values(3343, 'La sombra del caudillo',743,6,4);
insert into libro values(4883, 'El corazÃ³n de las tinieblas',2921,3,0);
insert into libro values(6420, 'AntologÃ­a de la literatura fantÃ¡stica',1769,4,1);
insert into libro values(7960, 'Memorias de Adriano',4333,5,1);
insert into libro values(1821, 'Lolita',4973,8,2);
insert into libro values(8991, 'Orgullo y prejuicio',1141,5,4);
insert into libro values(6946, 'La fiesta del chivo',5622,10,6);
insert into libro values(6948, 'Confabulario',4599,7,5);
insert into libro values(5934, 'Noticias del imperio',120,5,4);

/*AUTOR*/

insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Roberto Arlt''', 'Yanjiang', 'China', 9732);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Umberto Eco''', 'Dunhou', 'China', 7686);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Miguel León Portilla''', 'Alkmaar', 'Netherlands', 1547);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Mijail Bulgákov''', 'Palykavichy Pyershyya', 'Belarus', 4120);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''J.R.R. Tolkien''', 'Esperanza', 'Dominican Republic', 6685);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Octavio Paz''', 'Aserrío de Gariché', 'Panama', 6686);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Carmen Laforet''', 'Zoumi', 'Morocco', 3123);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''William Shakespeare''', 'Yanmen', 'China', 7732);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Ray Bradbury''', 'Zhuxi Chengguanzhen', 'China', 4661);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Juan Rulfo''', 'Louiseville', 'Canada', 3125);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Jean Paul Sartre''', 'Hejiaping', 'China', 9794);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Gabriel García Márquez''', 'Mongu', 'Zambia', 8266);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Alfonso Reyes''', 'Châlons-en-Champagne', 'France', 1612);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Roberto Bolaño''', 'Dadu', 'Pakistan', 9299);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Sófocles''', 'Palaiseau', 'France', 9812);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Aldous Huxley''', 'Trzebinia', 'Poland', 7270);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Mario Benedetti''', 'Lianozovo', 'Russia', 3176);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Julio Cortázar''', 'Jāwā', 'Jordan', 1676);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Ernesto Sabato''', 'Simitli', 'Bulgaria', 6288);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''George Orwell''', 'Tianjin', 'China', 9888);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Herman Hesse''', 'Limoges', 'France', 3236);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Jorge Luis Borges''', 'Vinica', 'Croatia', 6309);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Sándor Márai''', 'Mahaica Village', 'Guyana', 5805);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Fray Servando Teresa de Mier''', 'Khlong Toei', 'Thailand', 8880);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Michel Houellebecq''', 'Dian-ay', 'Philippines', 3251);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Choderlos de Laclos''', 'Радишани', 'Macedonia', 6323);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Octavio Paz et al''', 'Datian', 'China', 699);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''F. S. Fitzgerald''', 'Chapelton', 'Jamaica', 3785);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Sor Juana Inés de la Cruz''', 'Pio Duran', 'Philippines', 1748);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Agustín Yáñez''', 'Pueblo Nuevo', 'Peru', 7394);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Edgar Allan Poe''', 'Sukosari', 'Indonesia', 2798);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Elena Garro''', 'Malanje', 'Angola', 2290);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Horacio Quiroga''', 'Fahraj', 'Iran', 7411);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Federico García Lorca''', 'Troyes', 'France', 9461);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Fernando Pessoa''', 'Nova Petrópolis', 'Brazil', 3319);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Enrique Krauze''', 'Fatufeto', 'Indonesia', 8953);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Alejandro Dumas', 'Ituiutaba', 'Brazil', 6397);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('Padre''', 'Miami', 'United States', 4864);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Milan Kundera''', 'San Clemente', 'Peru', 777);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Dante Alighieri''', 'Andou', 'China', 3343);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Pedro Calderón de la Barca''', 'Neresnytsya', 'Ukraine', 4883);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Fernando de Rojas''', 'Ninh Giang', 'Vietnam', 6420);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Martín Luis Guzmán''', 'Baie-Comeau', 'Canada', 7960);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Joseph Conrad''', 'Gīvī', 'Iran', 1821);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Jorge Luis Borges', 'Dampit', 'Indonesia', 8991);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('Adolfo Bioy Casares y Silvina Ocampo''', 'Simuay', 'Philippines', 6946);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Marguerite Yourcenar''', 'Kaltungo', 'Nigeria', 6948);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Vladimir Nabokov''', 'Bai’e', 'China', 5934);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Jane Austen''', 'Guachetá', 'Colombia', 9732);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Mario Vargas Llosa''', 'Jargalant', 'Mongolia', 7686);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Juan José Arreola''', 'Zopilotepe', 'Honduras', 1547);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''Fernando del Paso''', 'Pu’er', 'China', 4120);
insert into Autor (nombre, ciudad, pais, Codigo_libro_escrito) values ('''León Tolstoi''', 'Lijia', 'China', 6685);

/*CLIENTELA*/

insert into clientela (codigo, nombre, ref_per, fecha) values (1, 'Terrijo Kiehl', '53448-0001', date'2018-12-10');
insert into clientela (codigo, nombre, ref_per, fecha) values (2, 'Levey Bodimeade', '0179-0039',date '2018-05-12');
insert into clientela (codigo, nombre, ref_per, fecha) values (3, 'Quintana Leithgoe', '55111-148', date'2018-10-02');
insert into clientela (codigo, nombre, ref_per, fecha) values (4, 'Michail Sone', '62037-863',date '2018-07-08');
insert into clientela (codigo, nombre, ref_per, fecha) values (5, 'Oswell Southerns', '63629-3377',date '2018-05-15');
insert into clientela (codigo, nombre, ref_per, fecha) values (6, 'Lock Vairow', '66336-377',date '2019-01-09');
insert into clientela (codigo, nombre, ref_per, fecha) values (7, 'Nappy Jeyes', '52605-121',date '2018-11-17');
insert into clientela (codigo, nombre, ref_per, fecha) values (8, 'Darlleen Macquire', '75849-100',date '2018-07-16');
insert into clientela (codigo, nombre, ref_per, fecha) values (9, 'Lani Florentine', '61919-039',date '2018-07-15');
insert into clientela (codigo, nombre, ref_per, fecha) values (10, 'Genna Bentote', '10477-5601',date '2019-01-18');
insert into clientela (codigo, nombre, ref_per, fecha) values (11, 'Abelard Jone', '0832-0225', date'2019-01-13');
insert into clientela (codigo, nombre, ref_per, fecha) values (12, 'Germayne Mattiacci', '42291-113',date '2018-08-16');
insert into clientela (codigo, nombre, ref_per, fecha) values (13, 'Nial Mannagh', '49349-753', date'2018-08-04');
insert into clientela (codigo, nombre, ref_per, fecha) values (14, 'Mozes Kubczak', '0378-4516', date'2018-08-17');
insert into clientela (codigo, nombre, ref_per, fecha) values (15, 'Cole Fuzzey', '35356-831', date'2018-09-22');
insert into clientela (codigo, nombre, ref_per, fecha) values (16, 'Angelique Danbrook', '21695-325', date'2018-04-17');
insert into clientela (codigo, nombre, ref_per, fecha) values (17, 'Asia Demann', '64679-703',date '2019-02-02');
insert into clientela (codigo, nombre, ref_per, fecha) values (18, 'Derry Mayho', '0641-6027', date'2019-03-22');
insert into clientela (codigo, nombre, ref_per, fecha) values (19, 'Bobbye Waterstone', '0013-2650', date'2018-06-12');
insert into clientela (codigo, nombre, ref_per, fecha) values (20, 'Donnell Kalisz', '0406-9204', date'2018-12-13');
insert into clientela (codigo, nombre, ref_per, fecha) values (21, 'Tate Pauling', '63323-474', date'2018-11-20');
insert into clientela (codigo, nombre, ref_per, fecha) values (22, 'Pammie Dingle', '61577-3710', date'2019-02-18');
insert into clientela (codigo, nombre, ref_per, fecha) values (23, 'Alexine Hullah', '43419-373',date '2019-01-16');
insert into clientela (codigo, nombre, ref_per, fecha) values (24, 'Carolyne Donovin', '55154-5886', date'2018-05-29');
insert into clientela (codigo, nombre, ref_per, fecha) values (25, 'Pete Varian', '51079-467', date'2018-04-14');
insert into clientela (codigo, nombre, ref_per, fecha) values (26, 'Mattie Gierck', '13537-140', date'2018-07-13');
insert into clientela (codigo, nombre, ref_per, fecha) values (27, 'Yolane Effnert', '53462-594', date'2018-05-16');
insert into clientela (codigo, nombre, ref_per, fecha) values (28, 'Genny Benstead', '63629-3355', date'2018-07-25');
insert into clientela (codigo, nombre, ref_per, fecha) values (29, 'Maxy Barlow', '0378-2457', date'2018-04-17');
insert into clientela (codigo, nombre, ref_per, fecha) values (30, 'Ardyce Delgadillo', '54868-2264',date '2018-08-04');

/*informacion_personal*/

insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (1, '05 Lukken Pass', '128-519-3277', 'ahalmkin1@baidu.com', 'Ingeniería eléctrica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (2, '8 Mandrake Junction', '138-227-3223', 'lhollebon2@google.fr', 'Ingeniería mecánica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (3, '127 5th Parkway', '210-649-2742', 'lburchill3@prlog.org', 'Ingeniería mecánica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (4, '6 Corscot Point', '366-509-6887', 'rklaesson4@zdnet.com', 'Química farmacéutica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (5, '65 Colorado Avenue', '492-958-3052', 'emeadway5@cornell.edu', 'Geología');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (6, '5492 2nd Drive', '183-151-4820', 'lpack6@nba.com', 'Química farmacéutica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (7, '9856 Elka Junction', '924-411-4429', 'mbryning7@wufoo.com', 'Ingeniería de minas');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (8, '6 Mallory Place', '944-985-1703', 'ffawthorpe8@msn.com', 'Medicina');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (9, '584 Cordelia Court', '668-296-7595', 'ktainton9@tripadvisor.com', 'Ingeniería eléctrica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (10, '2 Eagle Crest Crossing', '920-632-2873', 'irussana@europa.eu', 'Ingeniería de minas');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (11, '77 Schurz Way', '100-419-1324', 'cgillesonb@simplemachines.org', 'Ingeniería eléctrica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (12, '7973 Westerfield Junction', '414-862-3937', 'singonc@fema.gov', 'Ingeniería informática');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (13, '5 Mccormick Place', '664-212-0072', 'iansterd@elpais.com', 'Ingeniería eléctrica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (14, '9 Thompson Road', '623-371-9923', 'wlittlekite@newsvine.com', 'Ingeniería de telecomunicaciones');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (15, '08 Fuller Lane', '239-779-2787', 'hmabbettf@jigsy.com', 'Medicina');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (16, '73 Waxwing Center', '807-798-9166', 'gwitherg@webeden.co.uk', 'Ingeniería mecánica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (17, '4 Ohio Drive', '774-645-7715', 'lkybbyeh@wiley.com', 'Ingenieria de Sistemas');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (18, '44898 Westerfield Drive', '743-222-8738', 'jluckeni@mapy.cz', 'Ingeniería mecánica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (19, '65 Parkside Point', '287-433-5265', 'aowthwaitej@dailymotion.com', 'Geología');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (20, '2866 Schmedeman Street', '243-984-8119', 'fhabletk@wunderground.com', 'Ingenieria de Sistemas');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (21, '26 Crescent Oaks Way', '902-526-3754', 'llyndonl@artisteer.com', 'Relaciones económicas internacionales');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (22, '1 1st Center', '101-637-8640', 'yduffynm@hc360.com', 'Ingeniería mecánica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (23, '72669 Coolidge Street', '617-333-7158', 'mgionettittin@reddit.com', 'Ingeniería de minas');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (25, '514 Shopko Road', '216-514-7059', 'vfowellp@gravatar.com', 'Ingeniería eléctrica');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (26, '1348 Charing Cross Street', '118-779-7260', 'lmathiotq@1und1.de', 'Medicina');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (27, '5 Ronald Regan Crossing', '775-712-4385', 'xmidlaner@cbsnews.com', 'Medicina');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (28, '460 Meadow Valley Point', '525-240-4396', 'sjambrozeks@washingtonpost.com', 'Relaciones económicas internacionales');
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (29, '205 Bartillon Terrace', '764-264-7979', 'mhenricssont@marketwatch.com', 'Relaciones económicas internacionales');


/*EDITORIAL*/

insert into editorial (codigo, nombre, telefono, direccion , correo) values (9732, 'Brina Murcott', '504-478-0618', '0 Stuart Junction', 'bmurcott0@cnbc.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (7686, 'Domenico Clarycott', '766-716-9977', '26 Green Ridge Park', 'dclarycott1@seattletimes.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (1547, 'Dee Pere', '393-982-6055', '9745 Colorado Drive', 'dpere2@sina.com.cn');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (4120, 'Jodie Escala', '968-585-6037', '71654 Maple Lane', 'jescala3@goodreads.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (6685, 'Ellen Wallwork', '414-610-7200', '50 Corben Circle', 'ewallwork4@imdb.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (6686, 'Welby Yarranton', '408-966-3113', '1 Delaware Pass', 'wyarranton5@edublogs.org');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (3123, 'Kore O''Loughane', '225-492-0606', '678 Pennsylvania Crossing', 'koloughane6@skyrock.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (7732, 'Martguerita Wellman', '721-129-8966', '88973 Marquette Trail', 'mwellman7@biblegateway.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (4661, 'Meridith Bembrick', '795-535-1572', '010 Everett Alley', 'mbembrick8@fotki.com');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (3125, 'Maury Tettley', '951-313-8476', '450 Spohn Terrace', 'mtettley9@columbia.edu');
insert into editorial (codigo, nombre, telefono, direccion , correo) values (9794, 'Marcelo Zuanelli', '979-887-9383', '930 Hooker Center', 'mzuanellia@1688.com');

/*LIBRO*/

insert into Compra (nombre_libro, precio, codigo_libro, descuento) values ('Grassland Croton', '$30.6B', 8880', 6.7);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Camwood', '$550.5M', 3251', 9.6);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Camito De Perro', '$1.36B', 6323, 1.4);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Tundra Wildrye', '$1.04B', 699, 5.4);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Nut Palm', '$4.84B', 3785, 4.4);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Speckled Clarkia', '$332.53M', 1748, 3.0);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Waianae Range Hala Pepe', 'n/a', 7394, 6.2);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Haya Blanca', 'n/a', 2798, 2.4);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Seaside Twintip', 'n/a', 7411, 2.5);
insert into Compra (nombre_libro, precio, codigo_libro, descuento ) values ('Lanceleaf Blanketflower', '$2.13B', 9461, 4.9);

/*REFERENCIA*/

insert into Referencia (codigo, nombre, correo, telefono, direccion) values (9732, 'Lindsey Barthot', 'lbarthot3@dmoz.org', '4989868391', '8 South Lane');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (7686, 'Cindy Roll', 'croll1@youtu.be', '7174252421', '6 Atwood Pass');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (1547, 'Donavon Upham', 'dupham2@berkeley.edu', '3548167298', '59 Bowman Court');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (4120, 'Kristian Drewet', 'kdrewet4@loc.gov', '7784404494', '0703 Sauthoff Circle');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (6685, 'Jen Krug', 'jkrug5@jiathis.com', '1771376232', '85 Warner Drive');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (6686, 'Julina Vasilchikov', 'jvasilchikov6@vkontakte.ru', '5083728732', '9 Corry Park');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (3123, 'Daron Layhe', 'dlayhe7@dagondesign.com', '8998931204', '063 Pennsylvania Hill');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (7732, 'Christie Repp', 'crepp8@umn.edu', '8776922940', '1338 Delladonna Hill');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (4661, 'Gisela Sarfati', 'gsarfati9@dion.ne.jp', '8052740696', '97447 Sommers Alley');
insert into Referencia (codigo, nombre, correo, telefono, direccion) values (3125, 'Joycelin Kliment', 'jklimenta@1und1.de', '2051480571', '0 Acker Road');


/*ENTREGA parte 2*/
/*DISPARADORES CRUD CLIENTE-COMPRA*/
/*EL CONSECUTIVO Y LA FECHA SE AGREGAN AUTOMATICAMENTE*/


CREATE OR REPLACE TRIGGER AGREGAR_FECHA_CONSECUTIVO
  BEFORE INSERT ON CLIENTELA 
      FOR EACH ROW 
	    DECLARE
		  V_fecha number;
          NUMERO NUMBER;
          fecha DATE;
		BEGIN 
          SELECT MAX(codigo) INTO NUMERO FROM CLIENTELA;
          SELECT count(fecha) INTO V_fecha FROM CLIENTELA;
          if V_fecha=0 then 
            :NEW.codigo:=1;
          ELSE
            :NEW.codigo:=NUMERO+1;
          END if;
          SELECT  TO_date(SYSDATE, 'YYYY-MM-DD') INTO :new.fecha FROM dual;
        END;
/**/


/*DISPARADOR NOOK*/
INSERT INTO CLIENTELA  (nombre, ref_per) VALUES ('SEBASTIAN NIETO', '000000000-0066')

/*DISPARADOR OK*/
INSERT INTO CLIENTELA  (nombre) VALUES ('Brayan Burgos')


/*CONSULTA AGREGAR_FECHA_CONSECUTIVO*/
SELECT * FROM CLIENTELA;

/*LOS CODIGOS DE LOS LIBROS NO SE PUEDEN MODIFICAR*/

/*Modificar detalle de LIBROS */

CREATE TRIGGER modificar_LIBRO_COLUMNAS 
    BEFORE INSERT ON libro
        FOR EACH ROW
            BEGIN
                IF :OLD.ISBN<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
                IF :OLD.titulo<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
                IF :OLD.numero_paginas<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                IF :OLD.numero_ejemplares<>NULL THEN
                    raise_application_error(-20086,'No se puede actualizar la informacion');
                END IF;
                
            END;
            
/*DISPARADOR OKNO*/
ALTER TABLE LIBRO ADD ISBN char(100) DEFAULT 'NULL';
/*DISPARADOR OK*/
insert into libro values(0001, 'El juguete rabioso 2',1110,4,1);
/*consulta MODIFICAR ISBN*/
SELECT * FROM LIBRO;

/*tuplas CRUD COMPRA_CLIENTELA_INFORMACIONPERSONAL*/
/*VERIFICAR QUE LOS CORREO QUE EXISTEN EN REFERENCIA, INFORMACION_PERSONAL y EDITORIAL no tenga mas de un @*/

/*ALTER TABLE REFERENCIA ADD CONSTRAINT CK_CORREO_REFERENCIA CHECK(correo NOT LIKE '%@%@%');*/
ALTER TABLE INFORMACION_PERSONAL ADD CONSTRAINT CK_CORREO_INFORMACION_PERSONAL CHECK(correo NOT LIKE '%@%@%');
/* TUPLAS NOOK*/
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (30, '05 Lukken Pass 02', '128-519-3227', 'ahalmkin1@@baidu.com', 'Ingeniería eléctrica');
/*TUPLAS OK*/
insert into informacion_personal (codigo, direccion, numero_de_telefono, correo, estudios) values (31, '05 Lukken kk 02', '128-519-3666', 'ahalmkin1@gmail.com', 'Ingeniería sistemas')
/*VERIFICAR QUE EL CODIGO DEL CLIENTE Y SU INFORMACION PERSONAL ESTE ENTRE 1 y N donde N en este caso es 33*/

ALTER TABLE CLIENTELA ADD CONSTRAINT CK_CODIGO_CLIENTE CHECK(codigo BETWEEN 1 AND 33);
ALTER TABLE INFORMACION_PERSONAL ADD CONSTRAINT CK_CODIGO_INFORMACION_PERSONAL CHECK(codigo BETWEEN 1 AND 33);
/TUPLAS NOOK/
insert into clientela (codigo, nombre, ref_per, fecha) values (50, 'nicolas WIKI', '55548-0001', date'2018-04-10');
/*TUPLAS OK*/
insert into clientela (codigo, nombre, ref_per, fecha) values (32, 'nicolas WIKI', '55548-0001', date'2018-04-10');

/*tuplas CRUD LIBRO*/

/*VERIFICAR QUE EL NUMERO DE PAGINAS, EL NUMERO DE DISPONIBLES, EL NUMERO DE EJEMPLARES no sean negativos*/
ALTER TABLE LIBRO ADD CONSTRAINT CK_N_PAGE CHECK(numero_paginas>1);
/*tuplas nook*/
insert into libro values(5938001, 'Noticias del imperio 2',-32,5,4);
/*tuplas ok*/
insert into libro values(59384, 'Noticias del imperio ROMANO',450,5,4);

ALTER TABLE LIBRO ADD CONSTRAINT CK_N_DIS CHECK(disponible>1);
/*tuplas nook*/
insert into libro values(593876, 'Noticias del imperio 2',32,-5,4);
/*tuplas ok*/
insert into libro values(593815, 'Noticias del imperio ROMANO vol2',450,10,4);

ALTER TABLE LIBRO ADD CONSTRAINT CK_N_PAGE CHECK(numero_ejemplares>1);
/*tuplas nook*/
insert into libro values(593811, 'Noticias del imperio 2',-32,5,-7);
/*tuplas ok*/
insert into libro values(593812, 'Noticias del imperio ROMANO vol3',450,5,4);



ALTER TABLE compra DROP CONSTRAINT FK_codigo_libro;
ALTER TABLE compra ADD CONSTRAINT FK_LIBRO_COMPRA FOREIGN KEY (codigo_libro) REFERENCES LIBRO(ISBN) ON DELETE CASCADE;

/*ACCIONES OK*/
DROP TABLE COMPRA;  

ALTER TABLE CLIENTELA DROP CONSTRAINT FK_clientela_infopersonal;
ALTER TABLE CLIENTELA ADD CONSTRAINT FK_clientela_infopersonal FOREIGN KEY (codigo) REFERENCES informacion_personal(codigo) ON DELETE CASCADE;

/*ACCIONES OK*/
DROP TABLE CLIENTELA;

ALTER TABLE libro DROP CONSTRAINT FK_libro_autor;
ALTER TABLE libro ADD CONSTRAINT FK_libro_autor FOREIGN KEY (ISBN) REFERENCES LIBRO(ISBN) ON DELETE CASCADE;

/*ACCIONES OK*/
DROP TABLE LIBRO;





/*borrar los datos del servidor sin necesidad de usar Xpoblar, Xtablas*/
BEGIN
   FOR cur_rec IN (SELECT object_name, object_type
                     FROM user_objects
                    WHERE object_type IN
                             ('TABLE',
                              'VIEW',
                              'PACKAGE',
                              'PROCEDURE',
                              'FUNCTION',
                              'SEQUENCE',
                              'SYNONYM',
                              'PACKAGE BODY'
                             ))
   LOOP
      BEGIN
         IF cur_rec.object_type = 'TABLE'
         THEN
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '" CASCADE CONSTRAINTS';
         ELSE
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '"';
         END IF;
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (   'FAILED: DROP '
                                  || cur_rec.object_type
                                  || ' "'
                                  || cur_rec.object_name
                                  || '"'
                                 );
      END;
   END LOOP;
END;
/