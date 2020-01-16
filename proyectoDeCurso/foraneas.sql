/*FORANEAS*/
ALTER TABLE cliente
ADD CONSTRAINT FK_cliente_usuario  FOREIGN KEY(codigo) references usuario(codigo);

ALTER TABLE informacion_personal
ADD CONSTRAINT FK_cliente_infpersonal  FOREIGN KEY(codigo) references cliente(codigo);

ALTER TABLE referencia
ADD CONSTRAINT FK_cliente_referencia  FOREIGN KEY(codigo) references cliente(codigo);

ALTER TABLE autor
ADD CONSTRAINT FK_libro_autor FOREIGN KEY(Codigo_libro_escrito) references libro(ISBN);

ALTER TABLE editorial
ADD CONSTRAINT FK_libro_ediorial FOREIGN KEY(codigo) references libro(ISBN);

ALTER TABLE compra
ADD CONSTRAINT FK_libro_compra FOREIGN KEY(codigo_libro) references libro(ISBN);

ALTER TABLE compra
ADD CONSTRAINT FK_cliente_compra FOREIGN KEY(cliente) references cliente(codigo);