delimiter :)
create procedure agregar_actor2(in frame varchar(50), in Lname varchar(50))
begin
	declare actorid int;
    select ultimo_actorid() into actorid;
    set actorid = actorid + 1;
    
	insert into actor(actor_id, first_name, last_name)
    values(actorid, frame, Lname);
end :)
delimiter ;