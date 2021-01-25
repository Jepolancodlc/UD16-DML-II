
--3.1
select * from almacenes;
--3.2
select * from cajas where valor > 150;
--3.3
select distinct contenido from cajas;
--3.4
select AVG(valor) from cajas;
--3.5
select almacenID, avg(valor) from cajas group by almacenID;
--3.6
select almacenID , avg(valor) from cajas group by almacenID having AVG(valor) >150;
--3.7
select numReferencia, lugar from almacenes inner join cajas on almacenID = idAlmacenes;
--3.8
select almacenID from cajas group by almacenID; 
--3.9
select idAlmacenes from almacenes where capacidad < (select count(*) from cajas where almacenID = idAlmacenes);
--3.10
select numReferencia from cajas where almacenID in ( select idAlmacenes from almacenes where lugar ='Bilbao' );
--3.11
insert into almacenes (lugar, capacidad) values ('Barcelona', 3);
--3.12
insert into cajas values ('H5RT', 'Papel', 200, 2);
--3.13
update cajas set valor = valor * 0.85;
--3.14
update cajas set valor = valor * 0.80 where valor > (select AVG(valor) from cajas)
--3.15
delete from cajas where valor <100; 
--3.16
delete from cajas where almacenID in (select idAlmacenes from almacenes where capacidad < (select count(*) from cajas where almacenID = idAlmacenes));
