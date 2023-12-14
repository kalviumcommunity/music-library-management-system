-- Advanced Queries
-- Retrieve song titles and artists for songs in the 'Hip-Hop/Rap' genre
SELECT songs.song_title, artists.artist_name
FROM songs
INNER JOIN albums ON songs.album_id = albums.album_id
INNER JOIN artists ON albums.artist_id = artists.artist_id
WHERE albums.genre = 'Hip-Hop/Rap';

