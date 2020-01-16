/*CRUD  PERFIL */
CREATE TABLE Perfil (
  correo varchar(30) not NULL,
  nombre varchar(20) not NULL ,
  bloqueado number(1) not NULL);

/*CRUD  Tema y Trata */
CREATE TABLE Tema (
  nombre varchar(50) not NULL,
  perfil varchar(30) not NULL );

CREATE TABLE Trata (
  nivel varchar(1) not NULL,
  porcentaje number(3) not NULL,
  nombre varchar(50) not null,
  sigla varchar(3) not null);
/*CRUD  Contenido y Temporal */

CREATE TABLE Contenido (
  nombre varchar(20) not NULL,
  fecha date not NULL,
  url varchar(50) not NULL,
  tipo varchar(1) not NULL,
  filtro varchar(10) not null);


CREATE TABLE Temporal (
  duracion number(3) not NULL,
  idioma varchar(1) not NULL,
  nombre varchar(20) not null);
  
/*CRUD  Asignatura*/
CREATE TABLE Asignatura (
  sigla varchar(3) not NULL,
  nombre varchar(15) not NULL,
  tema varchar(50) not null);

/*CRUD  Filtro*/
create table Filtro(
    nombre varchar(10) not NULL,
    descripcion varchar(50)not NULL,
    contenido varchar(20) not null);
/*CRUD  Consulta*/
create table Consulta(
    perfil varchar(30) not null,
    contenido varchar(20) not null,
    fecha date not NULL);

/*CRUD  Consulta*/
create table Opinion (
    numero number(5) not NULL,
    fecha date not NULL,
    tipo varchar(1) not NULL,
    justificacion varchar(20) DEFAULT NULL, 
    detalle varchar(300) DEFAULT NULL,
    perfil varchar(30) not null,
    contenido varchar(20) not null);

create table Es_Prerrequisito(
    nombre1 varchar(50) not NULL, 
    nombre2 varchar(50) not NULL,
    asignatura varchar(3) not NULL);

create table Es_Subtema(
    nombre1 varchar(50) not NULL,
    nombre2 varchar(50) not NULL);
create table Adjetivos(
    no_adjetivo number(5) not null,
    adjetivo varchar(20) not null);
create table Etiquetas(
    etiqueta varchar(100) not null,
    nombre varchar(10) not null);

create table Es_de(
    nombre_contenido varchar(20) not null,
    nombre_filtro varchar(10) not null);

create table Palabras(
    nombre varchar(50) not null,
    descripcion varchar(10) not null);
    
