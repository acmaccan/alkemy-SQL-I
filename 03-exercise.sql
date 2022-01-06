CREATE TABLE PROFESOR (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  salario FLOAT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Juan", "Pérez", "1990-06-06", 55000);
INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "María Emilia", "Paz", "1984-07-15", 72000);
INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Martín", "Correa", "1987-12-07", 63000);
INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Lucía", "Díaz", "1991-02-24", 45000);
INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Raúl", "Martínez", "1980-10-15", 85000);
INSERT INTO PROFESOR (id,nombre,apellido,fecha_nacimiento,salario) VALUES (null, "Mabel", "Ríos", "1982-06-12", 83000);

/* 1. Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente */
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY fecha_nacimiento;

/* 2. Todos los profesores cuyo salario sea mayor o igual a 65000 */
SELECT * FROM PROFESOR WHERE salario >= 65000;

/* 3. Todos los profesores que nacieron en la década del 80 */
SELECT * FROM PROFESOR WHERE fecha_nacimiento BETWEEN "1980-01-01" AND "1990-01-01";

/* 4. 5 registros */
SELECT * FROM PROFESOR LIMIT 5;

/* 5. Todos los profesores cuyo apellido inicie con la letra “P” */
SELECT * FROM PROFESOR WHERE apellido LIKE 'P%';

/* 6. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000 */
SELECT * FROM PROFESOR WHERE fecha_nacimiento BETWEEN "1980-01-01" AND "1990-01-01" AND salario > 80000;