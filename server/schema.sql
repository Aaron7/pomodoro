drop table if exists pomodoros;
drop table if exists users;
create table pomodoros (
    id integer primary key autoincrement,
    user_id integer not null,
    start integer not null,
    end integer,
    type_id integer not null default '1'
);
create table users (
    id integer primary key autoincrement,
    user integer not null,
    pass integer not null
);