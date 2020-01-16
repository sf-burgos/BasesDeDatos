ALTER TABLE libro 
ADD CONSTRAINT PK_codigo PRIMARY KEY (ISBN);

ALTER TABLE Autor 
ADD CONSTRAINT PK_Autor PRIMARY KEY (nombre,Codigo_libro_escrito);


ALTER TABLE Cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (codigo);

ALTER TABLE compra 
ADD CONSTRAINT PK_compracodigo PRIMARY KEY (codigo_libro);

ALTER TABLE Editorial 
ADD CONSTRAINT PK_Editorialcodigo PRIMARY KEY (codigo);

ALTER TABLE informacion_personal 
ADD CONSTRAINT PK_informacion_personal PRIMARY KEY (codigo);

ALTER TABLE referencia 
ADD CONSTRAINT PK_codigo_referencia PRIMARY KEY (codigo);

ALTER TABLE usuario
ADD CONSTRAINT PK_usuario PRIMARY KEY (codigo);

