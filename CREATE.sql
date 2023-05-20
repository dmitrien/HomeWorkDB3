CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executor (
	id SERIAL PRIMARY KEY,
	user_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreOfExecutor (
	genre_id INTEGER REFERENCES Genre(id),
	executor_id INTEGER REFERENCES Executor(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, executor_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	albums_name VARCHAR(40) NOT null,
	year_release DATE
);

CREATE TABLE IF NOT EXISTS Song (
	id SERIAL PRIMARY KEY,
	albums_song VARCHAR(40) NOT null,
	duration INTEGER NOT NULL,
	albums_id INTEGER NOT NULL REFERENCES Albums(id)
	
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(40) NOT null,
	release_date DATE
);

CREATE TABLE IF NOT EXISTS SongOfCollection (
	song_id INTEGER NOT NULL REFERENCES Song(id),
	collection_id INTEGER NOT NULL REFERENCES Collection (id)
);

CREATE TABLE IF NOT EXISTS AlbumsOfExecutor (
	executor_id INTEGER NOT NULL REFERENCES Executor (id),
	albums_id INTEGER NOT NULL REFERENCES Albums (id)
);