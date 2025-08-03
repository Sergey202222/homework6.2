 CREATE TABLE IF NOT EXISTS Genre
(
  genre_name VARCHAR(50) NOT NULL PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS Executor
(
  executor_name VARCHAR(50) NOT NULL PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS Albom
(
  albom_name VARCHAR(50) NOT NULL PRIMARY KEY ,
  year INTEGER NOT NULL
);

ALTER TABLE Albom ADD COLUMN 
treck_name VARCHAR(50) REFERENCES Treck(treck_name);
ALTER TABLE Albom DROP COLUMN treck_name;

CREATE TABLE IF NOT EXISTS Treck
(
  treck_name VARCHAR(50) NOT NULL PRIMARY KEY,
  treck_time TIME NOT NULL
);

ALTER TABLE Treck ADD COLUMN 
albom_name VARCHAR(50) REFERENCES Albom(albom_name);

CREATE TABLE IF NOT EXISTS Collection
(
  collection_name VARCHAR(50) NOT  NULL PRIMARY KEY ,
  year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_executor
(
  genre_name VARCHAR(50) NOT NULL REFERENCES Genre(genre_name),
  executor_name VARCHAR(50) NOT NULL REFERENCES Executor(executor_name),
  CONSTRAINT GenreExecutor PRIMARY KEY (genre_name, executor_name)
);

CREATE TABLE IF NOT EXISTS Executor_albom
(
  executor_name VARCHAR(50) REFERENCES Executor(executor_name),
  albom_name VARCHAR(50) REFERENCES Albom(albom_name),
  CONSTRAINT ExecutorAlbom PRIMARY KEY (executor_name, albom_name)
);

CREATE TABLE IF NOT EXISTS Treck_collection
(
  treck_name VARCHAR(50) REFERENCES Treck (treck_name),
  collection_name VARCHAR(50) REFERENCES Collection(collection_name),
  CONSTRAINT TreckCollection PRIMARY KEY (treck_name, collection_name)
);