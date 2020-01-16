ALTER TABLE Adjetivos  ADD CONSTRAINT FK_adjetivos_1  FOREIGN KEY(no_adjetivo) REFERENCES Opinion(numero);
ALTER TABLE Opinion  ADD CONSTRAINT FK_Opinion_1  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Opinion  ADD CONSTRAINT FK_Opinion_2  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Consulta  ADD CONSTRAINT FK_Consulta_1  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Consulta  ADD CONSTRAINT FK_Consulta_2  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Etiquetas  ADD CONSTRAINT FK_Etiqueta_1  FOREIGN KEY(etiqueta) REFERENCES Contenido(nombre);
ALTER TABLE Contenido  ADD CONSTRAINT FK_Contenido_1  FOREIGN KEY(filtro) REFERENCES Filtro(nombre);
ALTER TABLE Es_de  ADD CONSTRAINT FK_Es_de_1  FOREIGN KEY(nombre_contenido) REFERENCES Contenido(nombre);
ALTER TABLE Es_de  ADD CONSTRAINT FK_Es_de_2  FOREIGN KEY(nombre_Filtro) REFERENCES Filtro(nombre);
ALTER TABLE Filtro  ADD CONSTRAINT FK_Filtro_1  FOREIGN KEY(contenido) REFERENCES Contenido(nombre);
ALTER TABLE Trata  ADD CONSTRAINT FK_trata_1  FOREIGN KEY(nombre) REFERENCES Tema(nombre);
ALTER TABLE Trata  ADD CONSTRAINT FK_trata_2  FOREIGN KEY(sigla) REFERENCES Asignatura(sigla);
ALTER TABLE Temporal  ADD CONSTRAINT FK_Temporal_1  FOREIGN KEY(nombre) REFERENCES Contenido(nombre);
ALTER TABLE Tema  ADD CONSTRAINT FK_Tema_1  FOREIGN KEY(perfil) REFERENCES Perfil(correo);
ALTER TABLE Es_Prerrequisito  ADD CONSTRAINT FK_Prerre_1  FOREIGN KEY(asignatura) REFERENCES Asignatura(sigla);
ALTER TABLE Palabras  ADD CONSTRAINT FK_Palabras_1  FOREIGN KEY(nombre) REFERENCES Tema(nombre);
ALTER TABLE Es_subtema  ADD CONSTRAINT FK_Es_subtema_1  FOREIGN KEY(nombre1) REFERENCES Tema(nombre);

