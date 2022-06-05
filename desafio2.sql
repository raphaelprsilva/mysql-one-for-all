SELECT COUNT(c.id) AS cancoes, COUNT(DISTINCT a.id) AS artistas, COUNT(DISTINCT ab.id) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.artistas AS a
ON c.artista_id = a.id
INNER JOIN SpotifyClone.albuns AS ab
ON c.album_id = ab.id;
