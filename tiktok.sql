/* DATA INFORMATION */
SELECT * 
FROM tiktok_song

/* MOST POPULAR TRACK */
SELECT MAX (track_pop) AS track_popularity, track_name
FROM tiktok_song
GROUP BY track_name
ORDER BY MAX(track_pop) DESC LIMIT 1;

/* TOTAL NUMBER OF ARTIST */
SELECT COUNT (DISTINCT artist_name)
FROM tiktok_song

/* MOST POPULAR ARTIST (BASED ON THE SUM OF THE POPULARITY RATING OF EACH ARTIST) */
SELECT SUM (artist_pop) AS artist_popularity, artist_name
FROM tiktok_song
GROUP BY artist_name, artist_pop
ORDER BY SUM(artist_pop) DESC LIMIT 1;

/* ARTIST WITH THE LEAST DANCEABLE TRACK */
SELECT danceability, track_name, artist_name
FROM tiktok_song
GROUP BY track_name, artist_name, danceability
ORDER BY danceability ASC LIMIT 1;

/* COMPARISON OF THE LEAST DANCEABLE AND MOST DANCEABLE TRACK */
SELECT *
FROM tiktok_song
WHERE 
(track_name LIKE '%Colin%' OR 
 track_name LIKE '%Headie%')
