-- Active: 1708954987341@@bq43b4dhgh54bwont7lb-mysql.services.clever-cloud.com@3306@bq43b4dhgh54bwont7lb
-- Cliente:
-- Como cliente tengo la necesidad de crear una base de datos que me permita almacenar la información de los estudiantes, materias y notas obtenidas por los estudiantes sobre las materias.

CREATE TABLE estudiantes(
  id INT PRIMARY KEY AUTO_INCREMENT ,
  nombres VARCHAR(45) NOT NULL,
  apellidos VARCHAR(45) NOT NULL,
  fecha_nacimiento DATE NOT NULL
);


-- 1. Se deben insertar en la base de datos 10 estudiantes:

INSERT INTO estudiantes(nombres, apellidos, fecha_nacimiento)
VALUES 
('Leonardo', 'DiCaprio', '1974-11-11'),
('Angelina', 'Jolie', '1975-06-04'),
('Tom', 'Cruise', '1962-07-03'),
('Jennifer', 'Aniston', '1969-02-11'),
('Will', 'Smith', '1968-09-25'),
('Beyoncé', 'Knowles', '1981-09-04'),
('Brad', 'Pitt', '1963-12-18'),
('Scarlett', 'Johansson', '1984-11-22'),
('Dwayne', 'Johnson', '1972-05-02'),
('Taylor', 'Swift', '1989-12-13');




CREATE TABLE IF NOT EXISTS materias(
  id INT  PRIMARY KEY AUTO_INCREMENT, 
  nombre_materia VARCHAR(45) NOT NULL
);


-- 2. Se deben registrar 10 materias:

INSERT INTO  materias(nombre_materia)
VALUES 
('Física'),
('Química'),
('Biología'),
('Historia'),
('Literatura'),
('Filosofía'),
('Inglés'),
('Programación'),
('Economía'),
('Arte');


CREATE TABLE IF NOT EXISTS notas(
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_estudiante INT NOT NULL,
  id_materia INT NOT NULL,
  nota FLOAT NOT NULL,
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id),
  FOREIGN KEY (id_materia) REFERENCES materias(id)
);


--3. Cada estudiante deberá tener como mínimo 3 materias asociadas:

INSERT INTO notas(id_estudiante, id_materia, nota) 
VALUES
(1, 1, 3.9),
(1, 2, 4.5),
(1, 3, 3.2),
(2, 1, 4.1),
(2, 2, 3.8),
(2, 3, 4.6),
(3, 1, 4.9),
(3, 2, 3.7),
(3, 3, 4.2),
(4, 1, 3.5),
(4, 2, 4.7),
(4, 3, 4.0),
(5, 1, 4.2),
(5, 2, 4.3),
(5, 3, 3.9),
(6, 1, 4.6),
(6, 2, 4.8),
(6, 3, 4.4),
(7, 1, 3.8),
(7, 2, 4.2),
(7, 3, 4.1),
(8, 1, 4.5),
(8, 2, 3.9),
(8, 3, 4.3),
(9, 1, 4.0),
(9, 2, 4.4),
(9, 3, 3.6),
(10, 1, 3.7),
(10, 2, 4.1),
(10, 3, 4.5);


SELECT * FROM notas WHERE nota > 3.0;

SELECT * FROM estudiantes WHERE nombres LIKE 'M%';

SELECT * FROM estudiantes WHERE apellidos LIKE '%z';

SELECT * FROM materias WHERE nombre_materia LIKE '%a';