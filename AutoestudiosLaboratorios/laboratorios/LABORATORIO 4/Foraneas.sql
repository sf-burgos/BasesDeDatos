ALTER TABLE Adjetivos  ADD CONSTRAINT FK_adjetivos_Opinion  FOREIGN KEY(no_adjetivo) REFERENCES Opinion(numero);
ALTER TABLE Opinion  ADD CONSTRAINT FK_Opinion_Perfil  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Opinion  ADD CONSTRAINT FK_Opinion_Contenido  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Consulta  ADD CONSTRAINT FK_Consulta_Perfil  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Consulta  ADD CONSTRAINT FK_Consulta_Contenido  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Etiquetas  ADD CONSTRAINT FK_Etiqueta_Contenido  FOREIGN KEY(etiqueta) REFERENCES Contenido(nombre);
ALTER TABLE Contenido  ADD CONSTRAINT FK_Contenido_Perfil  FOREIGN KEY(url) REFERENCES Perfil(correo);
ALTER TABLE Es_de  ADD CONSTRAINT FK_Es_de_Cotenido  FOREIGN KEY(nombre_contenido) REFERENCES Contenido(nombre);
ALTER TABLE Es_de  ADD CONSTRAINT FK_Es_de_Filtro  FOREIGN KEY(nombre_filtro) REFERENCES Filtro(nombre);
ALTER TABLE Filtro  ADD CONSTRAINT FK_Filtro_Contenido  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Trata  ADD CONSTRAINT FK_trata_Tema  FOREIGN KEY(nombre) REFERENCES Tema(nombre);
ALTER TABLE Trata  ADD CONSTRAINT FK_trata_Sigla  FOREIGN KEY(sigla) REFERENCES Asignatura(sigla);
ALTER TABLE Temporal  ADD CONSTRAINT FK_Temporal_Contenido  FOREIGN KEY(nombre) REFERENCES Contenido(nombre);
ALTER TABLE Tema  ADD CONSTRAINT FK_Tema_Perfil  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Es_Prerrequisito  ADD CONSTRAINT FK_Prerre_Asignatura  FOREIGN KEY(asignatura) REFERENCES Asignatura(sigla);
ALTER TABLE Palabras  ADD CONSTRAINT FK_Palabras_Tema  FOREIGN KEY(nombre) REFERENCES Tema(nombre);
ALTER TABLE Es_subtema  ADD CONSTRAINT FK_Es_subtema_Tema  FOREIGN KEY(nombre1) REFERENCES Tema(nombre);

