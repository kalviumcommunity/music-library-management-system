-- Transaction control language
-- Update user password and insert a new playlist
BEGIN;
UPDATE users SET password = 'new_hashed_password' WHERE user_id = 1;
INSERT INTO playlist (playlist_id, user_id, playlist_title, description) VALUES (4, 1, 'New Playlist', 'Adding a new playlist');
COMMIT;
