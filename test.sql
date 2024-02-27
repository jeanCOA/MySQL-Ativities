SHOW DATABASES; 


USE bq43b4dhgh54bwont7lb;
-- listado de todas las personas que tengan 20 años
SELECT nombres, apellidos, edad FROM users WHERE edad = 20;
-- listado de todas la mujeres que tengan entre 20 y 30 años de edad

SELECT * FROM users WHERE genero = 'M' and edad > 20 and edad< 30;
-- quien es la persona con menos edad de la base de datos

SELECT * FROM users ORDER BY edad ASC LIMIT 1;
SELECT nombres,MIN(edad) FROM users;

-- cuantos usuarios hay registrados en la base de datos
SELECT COUNT(*) AS total FROM users;

-- traer los 5 primeros usuarios de la base de datos
SELECT * FROM users ORDER BY id ASC LIMIT 5;

-- traer a los ultimos 10 usuarios de la base de datos
SELECT * FROM users ORDER BY id DESC LIMIT 10;

-- listar usuarios que su correo finalice en .net
SELECT nombres,apellidos,correo FROM users WHERE correo LIKE'%.net';

-- lista usuarios que no vivan en colombia 
SELECT * FROM users WHERE pais NOT IN('colombia');

-- listar usuarios que no vivan en ecuador y panama
SELECT * FROM users WHERE pais NOT IN ('ecuador','panama');

-- 10. Número de Usuarios de Colombia que les gusta el Rock.
SELECT * from users WHERE pais in ('colombia') and musica like'%rock';
SELECT * from users WHERE pais in ('colombia') and musica in ('rock');

-- 11. Actualizar el género musical de todos los usuarios de la base de datos. De “Metal” a “carranga”.
UPDATE users
set musica = REPLACE(musica,'metal','carranga')
WHERE musica like '%metal%';

-- 12. Listado de hombres que les gusta la “carranga” sean de Colombia y tengan entre 10 y 20 años de edad.
SELECT nombres,apellidos,musica,pais,edad from users where musica LIKE'%carranga' AND pais in('colombia') AND edad > 10 AND edad <20;

-- 13. Actualizar todos los usuarios que tengan 99 años, su nuevo género musical favorito será la “carranga”.
update users
set musica = 'carranga'
WHERE edad = 99;
-- 14. Listar todos los usuarios cuyo nombre inicie con “a”, “A”.
SELECT * from users WHERE LOWER(nombres) LIKE'a%';

-- 15. Listar todos los usuarios cuyo apellido finalice con “z”, “Z”.
SELECT * from users WHERE LOWER(apellidos) LIKE'%z';

-- 16. Actualizar los usuarios que tengan 50 años de edad su nuevo genero musical será NULL.
update users
set musica = 'NULL'
WHERE edad = 50;

-- 17. Listar todos los usuarios cuyo género musical sea NULL.
USE bq43b4dhgh54bwont7lb;
SELECT * FROM users WHERE musica ='NULL';

-- 18. Resultado de la suma de todas la edades de la base de datos.
SELECT SUM(edad) from users;
-- 19. Cantidad de usuarios de ecuador.
SELECT COUNT(*) AS total FROM users WHERE pais = 'ecuador';
-- 20. Cantidad de usuarios colombianos que les gusta el vallenato.
SELECT COUNT(*) AS total FROM users WHERE pais = 'colombia' AND musica = 'vallenato';
SELECT COUNT(*) AS total FROM users WHERE pais = 'colombia' AND musica LIKE'%vallenato';