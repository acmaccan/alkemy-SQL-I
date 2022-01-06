CREATE TABLE PROFESOR (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  salario FLOAT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE CURSO (
  codigo INT NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  descripcion VARCHAR(45) NOT NULL,
  cupo INT NOT NULL DEFAULT 20,
  turno VARCHAR(45) NOT NULL,
  PROFESOR_id INT,
  PRIMARY KEY (codigo),
  FOREIGN KEY (PROFESOR_id) REFERENCES PROFESOR(id)
);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Juan", "Pérez", "1990-06-06", 55000);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "María Emilia", "Paz", "1984-07-15", 72000);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Martín", "Correa", "1987-12-07", 63000);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Lucía", "Díaz", "1991-02-24", 45000);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Raúl", "Martínez", "1980-10-15", 85000);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Mabel", "Ríos", "1982-06-12", 83000);

INSERT INTO CURSO (codigo,nombre,descripcion,cupo,turno,PROFESOR_id) VALUES (101,"Algoritmos","Algoritmos y estructuras de Datos",default,"Mañana",1);

INSERT INTO CURSO (codigo,nombre,descripcion,cupo,turno,PROFESOR_id) VALUES (102,"Matemática Discreta","",default,"Tarde",2);

INSERT INTO CURSO (codigo,nombre,descripcion,cupo,turno,PROFESOR_id) VALUES (103,"Programación JAVA","POO en JAVA",35,"Noche",4);

INSERT INTO CURSO (codigo,nombre,descripcion,cupo,turno,PROFESOR_id) VALUES (104,"Programación Web","",35,"Noche",5);

INSERT INTO CURSO (codigo,nombre,descripcion,cupo,turno,PROFESOR_id) VALUES (105,"Programación C#",".NET, Visual Studio 2019",30,"Noche",6);