delimiter :)
create procedure borrar_actor(in actorid int)
begin
	delete from actor
    where actor_id = actorid;
end;

create procedure actualizar_actor(in actorid int, in fname varchar(50), in Lname varchar(50))
begin
	update actor
    set first_name = fname,
    last_name = Lname
    where actor_id = actorid;
end :)
delimiter ;