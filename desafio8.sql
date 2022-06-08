SELECT
	art.artista AS artista,
  alb.album AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.id
WHERE artista = 'Walter Phoenix'
ORDER BY album ASC;
