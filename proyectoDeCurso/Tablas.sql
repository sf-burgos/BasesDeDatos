/*CREACION DE TABLAS CICLO 1, Fuentes verdes, modelo general*/

CREATE  TABLE libro (
	ISBN VARCHAR(50),
	Titulo VARCHAR(69),
	numero_paginas number(10),
	numero_ejemplares number(10),
	disponible number(10));

CREATE TABLE Autor (
	Nombre VARCHAR(60),
	ciudad VARCHAR(50),
	pais VARCHAR(50),
	Codigo_libro_escrito VARCHAR(50));
	
CREATE TABLE cliente (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	telefono VARCHAR(50),
	fecha DATE);
	
CREATE TABLE Compra (
	codigo VARCHAR(50),
	precio VARCHAR(50),
	codigo_libro VARCHAR(50),
	descuento  DECIMAL(3,1),
    cliente varchar(50));

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
	carrera_profesional VARCHAR(50));

	
CREATE TABLE Referencia (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	correo VARCHAR(50),
	telefono NUMBER(37),
	direccion VARCHAR(50));
	
CREATE TABLE Usuario (
	codigo VARCHAR(50),
	nombre VARCHAR(50),
	telefono VARCHAR(50),
	fecha DATE);