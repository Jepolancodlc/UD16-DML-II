use e3;

--1.1
select nombre from articulos;
--1.2
select nombre, precio from articulos;
--1.3
select nombre from articulos where articulos.precio <= 200;
--1.4
select * from articulos where articulos.precio between 60 and 120;
--1.5
select nombre, (precio * 166.386) from articulos;
--1.6
select AVG(precio) from articulos;
--1.7
select AVG(precio) from articulos where fabricanteID = 2;
--1.8
select count(precio) from articulos where precio >= 180;
--1.9
select nombre, precio from articulos where precio >= 180 order by precio desc, nombre asc;
--1.10
select * from articulos, fabricantes where fabricanteID = idFabricantes;
--1.11
select articulos.nombre, precio, fabricantes.nombre from articulos, fabricantes
	where fabricanteID = idFabricantes;
--1.12
select AVG(precio), fabricanteID from articulos group by fabricanteID;
--1.13
select AVG(precio), fabricantes.nombre from articulos, fabricantes 
	where fabricanteID = idFabricantes group by fabricantes.nombre;
--1.14
select avg(precio), fabricantes.nombre from articulos, fabricantes 
	where fabricanteID = idFabricantes  group by fabricantes.nombre having AVG(precio) >= 150
--1.15
select nombre, precio from articulos where precio=(select min(precio) from articulos);
--1.16
select articulos.nombre, precio, fabricantes.nombre from articulos, fabricantes
	where idFabricantes= fabricanteID and precio =(select MAX(precio) from articulos where idFabricantes = fabricanteID);
--1.17
insert into articulos (nombre, precio , fabricanteID) values ('altavoces', 70, 2);
--1.18
update articulos set nombre = 'impresora laser' where idArticulos = 8;
--1.19
update articulos set precio = precio * 0.9
--1.20
update articulos set precio = precio -10 where precio >=120;