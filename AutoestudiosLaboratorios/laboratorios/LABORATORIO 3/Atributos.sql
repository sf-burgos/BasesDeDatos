ALTER TABLE Contenido 
ADD CONSTRAINT CK_Contenido1 CHECK(tipo IN('F','V','A'));

ALTER TABLE Opinion 
ADD CONSTRAINT CK_Opinion1 CHECK(tipo IN('E','G','C','e N'));

ALTER TABLE Trata 
ADD CONSTRAINT CK_Trata1 CHECK(nivel IN('E','P','A'));

ALTER TABLE Temporal 
ADD CONSTRAINT CK_Temporal1 CHECK(idioma IN('E','I','F'));

ALTER TABLE Perfil 
ADD CONSTRAINT CK_Perfil1 CHECK(REGEXP_LIKE(correo,'^[a-zA-Z0-9]+@[a-zA-Z0-9]'));

ALTER TABLE Contenido 
ADD CONSTRAINT CK_Contenido2 CHECK(url LIKE('%.%.%'));