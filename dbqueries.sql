-- DDL Commands

CREATE DATABASE music_library;
USE music_library;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    password VARCHAR(25) UNIQUE,
    email VARCHAR(50)
);

CREATE TABLE artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(50),
    description VARCHAR(200),
    genre VARCHAR(50)
);

CREATE TABLE albums (
    album_id INT PRIMARY KEY,
    album_title VARCHAR(50),
    artist_id INT,
    release_year YEAR,
    genre VARCHAR(50)
);

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(50),
    album_id INT,
    duration TIME,
    song_url VARCHAR(100)
);

CREATE TABLE playlist (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_title VARCHAR(50),
    description VARCHAR(100)
);

CREATE TABLE playlist_songs (
    playlistsong_id INT PRIMARY KEY,
    playlist_id INT,
    song_id INT
);

SHOW TABLES;

-- DML Commands

INSERT INTO users (user_id, user_name, password, email)
VALUES (1, 'The Real Slim Shady', 'hashed_password', 'eminem@gmail.com');

INSERT INTO artists (artist_id, artist_name, description, genre)
VALUES (1, 'Eminem', 'One of the greatest rappers of all time', 'Hip-Hop/Rap');

INSERT INTO albums (album_id, album_title, artist_id, release_year, genre)
VALUES (1, 'The Eminem Show', 1, 2002, 'Hip-Hop/Rap');

INSERT INTO songs (song_id, song_title, album_id, duration, song_url)
VALUES (1, 'Superman', 1, '00:05:50', 'https://www.youtube.com/watch?v=K_8yRH2KPVo');

INSERT INTO playlist (playlist_id, user_id, playlist_title, description)
VALUES (1, 1, 'My Playlist', 'My favourite music Collection');

INSERT INTO playlist_songs (playlistsong_id, playlist_id, song_id)
VALUES (1, 1, 1);