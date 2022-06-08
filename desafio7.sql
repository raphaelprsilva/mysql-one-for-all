SELECT
	art.artista AS artista,
  alb.album AS album,
  COUNT(usa.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.id
INNER JOIN SpotifyClone.usuarios_seguindo_artistas AS usa
ON alb.artista_id = usa.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
