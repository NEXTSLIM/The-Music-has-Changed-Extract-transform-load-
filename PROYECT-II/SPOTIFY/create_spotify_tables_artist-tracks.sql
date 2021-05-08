--CREATE & VIEW TABLES--

--ARTIST--
-- Create a spotify artist table
DROP TABLE spotify_artists;

CREATE TABLE spotify_artists (
  	artist_id VARCHAR(30) PRIMARY KEY,
	artist VARCHAR,
	followers INT
	);

--view artist table
SELECT * FROM spotify_artists;

--TRACKS--
-- Create a spotify tracks table
DROP TABLE spotify_tracks;

CREATE TABLE spotify_tracks (
	year INT,
	artist VARCHAR NOT NULL,
	danceability INT,
	duration_ms INT,
	energy INT,
	explicit INT,
  	id VARCHAR(30) PRIMARY KEY,
	loudness INT,
	name VARCHAR(255) not null,
	popularity INT,
	tempo INT,
	artist_id VARCHAR NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES spotify_artists(artist_id)
);

--view tracks table
SELECT * FROM spotify_tracks;