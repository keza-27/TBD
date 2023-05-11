delimiter :)
create trigger generar_id before update on actor
for each row
begin
	declare id int;

	select max(actor_id) into id from actor;
    set id = id + 1;
    
    insert into actor (actor_id) values (id);
end :)

delimiter ;