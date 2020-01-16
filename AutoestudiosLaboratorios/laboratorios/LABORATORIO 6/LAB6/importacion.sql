INSERT INTO contenido(nombre,url,tipo) SELECT distinct titulo,url,tipo FROM MBDAA01.contenidos;

INSERT INTO perfil SELECT distinct correo,nombre,bloqueado FROM MBDAA01.contenidos;

INSERT INTO temporal SELECT distinct duracion,idioma,titulo FROM MBDAA01.contenidos;

INSERT INTO tema SELECT distinct titulo,nombre FROM MBDAA01.contenidos;