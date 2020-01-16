ALTER TABLE Opinion 
ADD CONSTRAINT UK_Opinion1 UNIQUE (justificacion);

ALTER TABLE Opinion 
ADD CONSTRAINT UK_Opinion2 UNIQUE (detalle);

ALTER TABLE Contenido 
ADD CONSTRAINT UK_Contenido1 UNIQUE (url);