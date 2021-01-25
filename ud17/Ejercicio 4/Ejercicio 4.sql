--4.1
select nombre from peliculas;
--4.2
select distinct calificacionEdad from peliculas;
--4.3
select * from peliculas where calificacionEdad is null;
--4.4
select * from salas where peliculaID is null;
--4.5
select * from salas left join peliculas on peliculaID = peliculaID;
--4.6
select * from peliculas left join salas on peliculaID = peliculaID;
--4.7
select nombre from peliculas where idPelicula not in ( select peliculaID from salas where peliculaID is not null);
--4.8
insert into peliculas values ('Uno, Dos, Tres', 7);
--4.9
update peliculas set calificacionEdad = 13 where calificacionEdad is null;
--4.10
delete from salas where peliculaID in (select idPelicula from peliculas where calificacionEdad =0);