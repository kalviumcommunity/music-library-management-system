-- DML Commands
-- Adding users
INSERT INTO users (user_id, user_name, password, email)
VALUES 
    (1, 'The Real Slim Shady', 'hashed_password', 'eminem@gmail.com'),
    (2, 'Rick', 'hashed_password1', 'kendrick@gmail.com'),
    (3, 'Astley', 'hashed_password2', '50cent@gmail.com');

-- Adding artists
INSERT INTO artists (artist_id, artist_name, description, genre)
VALUES 
    (1, 'Eminem', 'One of the greatest rappers of all time', 'Hip-Hop/Rap'),
    (2, 'Kendrick Lamar', 'Influential rapper and lyricist', 'Hip-Hop/Rap'),
    (3, '50 Cent', 'Powerful rapper and entrepreneur', 'Hip-Hop/Rap');

-- Adding albums
INSERT INTO albums (album_id, album_title, artist_id, release_year, genre)
VALUES 
    (1, 'The Eminem Show', 1, 2002, 'Hip-Hop/Rap'),
    (2, 'good kid', 2, 2012, 'Hip-Hop/Rap'),
    (3, 'Get Rich or Die Tryin', 3, 2003, 'Hip-Hop/Rap');

-- Adding songs
INSERT INTO songs (song_id, song_title, album_id, duration, song_url)
VALUES 
    (1, 'Superman', 1, '00:05:50', 'https://www.youtube.com/watch?v=K_8yRH2KPVo'),
    (2, 'Money Trees', 2, '00:06:29', 'https://www.youtube.com/watch?v=Iy-dJwHVX84'),
    (3, 'P.I.M.P', 3, '00:04:09', 'https://www.youtube.com/watch?v=Jy1D6caG8nU');

-- Adding playlists and playlist songs
INSERT INTO playlist (playlist_id, user_id, playlist_title, description)
VALUES 
    (1, 1, 'My Playlist', 'My favourite music Collection'),
    (2, 2, 'K-Dot Favorites', 'Top tracks from Kendrick Lamar'),
    (3, 3, '50 Cent Classics', 'The essential 50 Cent tracks');

INSERT INTO playlist_songs (playlistsong_id, playlist_id, song_id)
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);

-- Several Other DML Commands

-- UPDATE users SET password = 'new_hashed_password' WHERE user_id = 1;
-- DELETE FROM playlist_songs WHERE playlistsong_id = 1;




-- Indexing and query optimizations
-- Creating an index on the song_title column for query optimization
-- CREATE INDEX idx_song_title ON songs(song_title);

-- Transaction control language
-- Update user password and insert a new playlist
-- BEGIN;
-- UPDATE users SET password = 'new_hashed_password' WHERE user_id = 1;
-- INSERT INTO playlist (playlist_id, user_id, playlist_title, description) VALUES (4, 1, 'New Playlist', 'Adding a new playlist');
-- COMMIT;
