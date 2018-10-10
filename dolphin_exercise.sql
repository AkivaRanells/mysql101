-- create table Dolphin(
--     name varchar(20) not null primary key,
--     color varchar(20),
--     birth_date date,
--     height smallint,
--     healthy boolean default true
-- )
-- insert into Dolphin
-- values(null, "orange",null,null,null)
-- select * from Dolphin where name like "%on"
-- delete from Dolphin
-- where color = "blue" and height<2
-- update Dolphin
-- set name="daron", height=6 where name =""
update Dolphin
set healthy = false where color="brown" or color="green"