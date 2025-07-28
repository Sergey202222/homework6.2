 CREATE TABLE IF NOT EXISTS Genre
(
  genre_name VARCHAR(50) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Executor
(
  executor_name VARCHAR(50) NOT NULL,
  
);

CREATE TABLE IF NOT EXISTS Albom
(
  albom_name VARCHAR(50) NOT NULL,
  year INTEGER NOT NULL,
);

CREATE TABLE IF NOT EXISTS Treck
(
  treck_name VARCHAR(50) NOT
  time ALLBALLS NOT NULL,
);

CREATE TABLE IF NOT EXISTS Collection
(
  collection_name VARCHAR(50) NOT  NULL,
  year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_executor
(
  genre_name VARCHAR(50) REFERENCES Genre(genre_name),
  executor_name VARCHAR(50) REFERENCES Executor(executor_name),
  CONSTRAINT GenreExecutor PRIMARY KEY (genre_name, executor_name)
);

CREATE TABLE IF NOT EXISTS Executor_albom
(
  executor_name VARCHAR(50) REFERENCES Executor(executor_name),
  albom_name VARCHAR(50) REFERENCES Albom(albom_name),
  CONSTRAINT genre_executor PRIMARY KEY (executor_name, albom_name)
);

CREATE TABLE IF NOT EXISTS Treck_collection
(
  treck_name VARCHAR(50) REFERENCES Treck (treck_name),
  collection_name VARCHAR(50) REFERENCES Collection(collection_name),
  CONSTRAINT genre_executor PRIMARY KEY (treck_name, collection_name)
);