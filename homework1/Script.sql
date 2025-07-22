create table if not exists genre
(
  genre_name varchar(50) not null,
  executor varchar(50) not null
);

create table if not exists executor
(
  executor_name varchar(50) not null,
  genre varchar(50) not null,
  albom varchar(50) not null
);

create table if not exists albom
(
  albom_name varchar(50) not null,
  year integer not null,
  treck varchar(50) not null
);

create table if not exists treck
(
  treck_name varchar(50) not null,
  time allballs not null,
  collection varchar(50) not null
);

create table if not exists collection
(
  treck_name varchar(50) not null,
  year integer not null,
  treck varchar(50) not null
);
