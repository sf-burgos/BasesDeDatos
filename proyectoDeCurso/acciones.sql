ALTER TABLE compra DROP CONSTRAINT FK_libro_compra;
ALTER TABLE compra ADD CONSTRAINT FK_libro_compra FOREIGN KEY (codigo_libro) REFERENCES LIBRO(ISBN) ON DELETE CASCADE;


ALTER TABLE referencia DROP CONSTRAINT FK_cliente_referencia;
ALTER TABLE referencia ADD CONSTRAINT FK_cliente_referencia FOREIGN KEY (codigo) REFERENCES cliente(codigo) ON DELETE CASCADE;

ALTER TABLE informacion_personal DROP CONSTRAINT FK_cliente_infpersonal;
ALTER TABLE informacion_personal ADD CONSTRAINT FK_cliente_infpersonal FOREIGN KEY (codigo) REFERENCES cliente(codigo) ON DELETE CASCADE;


ALTER TABLE usuario DROP CONSTRAINT FK_cliente_usuario ;
ALTER TABLE usuario ADD CONSTRAINT FK_cliente_usuario  FOREIGN KEY (Codigo_libro_escrito) REFERENCES libro(ISBN) ON DELETE CASCADE;

ALTER TABLE editorial DROP CONSTRAINT FK_libro_ediorial;
ALTER TABLE editorial ADD CONSTRAINT FK_libro_ediorial FOREIGN KEY (codigo_libro) REFERENCES LIBRO(ISBN) ON DELETE CASCADE;


