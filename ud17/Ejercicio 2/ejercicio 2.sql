--2.1
select apellidos from empleados;
--2.2
select distinct apellidos from empleados;
--2.3
select * from empleados where apellidos = 'S';
--2.4
select * from empleados where apellidos = 'S' or apellidos = 'R';
--2.5
select * from empleados where departamentosID = 14
--2.6
select * from empleados where departamentosID = 37 or departamentosID = 77;
--2.7
select * from empleados where apellidos like 'P%';
--2.8
select sum(presupuesto) from departamentos;
--2.9
select departamentosID, count(*) from empleados group by departamentosID;
--2.10
select * from empleados inner join departamentos on departamentosID = idDepartamentos;
--2.11
select empleados.nombre, apellidos, departamentos.nombre, presupuesto
from empleados inner join  departamentos on idDepartamentos = departamentosID;
--2.12
select nombre, apellidos from empleados where departamentosID in (select idDepartamentos from departamentos where presupuesto > 60000);
--2.13
select * from departamentos where presupuesto > (select avg(presupuesto) from departamentos);
--2.14
select nombre from departamentos where idDepartamentos in (select departamentosID from empleados group by idDepartamentos having count (*)>2);
--2.15
insert into departamentos values ('Calidad', 40000);
insert into empleados values ('89267109', 'Esther', 'V', 11);
--2.16
UPDATE departamentos set presupuesto = presupuesto * 0.9;
--2.17
Update empleados set departamentosID = 14 where departamentosID =77;
--2.18
delete from empleados where departamentosID = 14;
--2.19
delete from empleados where departamentosID in (select idDepartamentos from departamentos where presupuesto >= 60000);
--2.20
delete from empleados;