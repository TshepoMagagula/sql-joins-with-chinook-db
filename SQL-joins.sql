-- SQLite
SELECT * FROM artists

SELECT * FROM genres

SELECT * FROM playlists

SELECT * FROM albums
INNER JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE  artists.Name = 'Accept'

SELECT * FROM tracks
INNER JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = 'Hip Hop/Rap'

SELECT * FROM tracks
JOIN playlist_track ON tracks.trackId = playlist_track.TrackId
JOIN playlists ON playlists.PlaylistId = playlist_track.PlaylistId
WHERE playlists.Name = 'Classical'

/* 








 */


-- * :one: Find all the artists for a given Genre
SELECT DISTINCT a.Name FROM artists a
JOIN albums b ON a.ArtistId = b.ArtistId
JOIN tracks c ON b.AlbumId = c.AlbumId
JOIN  genres d ON c.GenreId = d.GenreId
WHERE d.Name = 'Jazz'

-- *  :two: Find the Playlist with the most / least songs
SELECT COUNT(*), MAX(*) AS 'Playlist with the most songs'
FROM playlists a
JOIN playlist_track b ON a.PlaylistId = b.PlaylistId
JOIN tracks c ON b.TrackId = c.TrackId

-- *  :three: Find the total for a given invoice

-- *  :four: Find all the playlists containing a given genre

-- *  :five: Find the biggest/smallest invoice amounts

--*  :six: Find the artist with the most/least songs