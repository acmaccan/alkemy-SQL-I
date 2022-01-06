CREATE TABLE CURSO (
  codigo INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  descripcion VARCHAR(45) NOT NULL,
  turno VARCHAR(45) NOT NULL,
  PRIMARY KEY (codigo)
);

ALTER TABLE CURSO ADD cupo INT;

INSERT INTO CURSO (codigo,nombre,descripcion,turno,cupo) VALUES (101,"Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);

INSERT INTO CURSO (codigo,nombre,descripcion,turno,cupo) VALUES (102,"Matemática Discreta","","Tarde",30);

INSERT INTO CURSO (codigo,nombre,descripcion,turno,cupo) VALUES (103,NULL,"", "Mañana",32);

INSERT INTO CURSO (codigo,nombre,descripcion,turno,cupo) VALUES (101,"Programación 1","", "Mañana",35);

UPDATE CURSO SET cupo = 25;

DELETE FROM CURSO WHERE codigo = 101;
