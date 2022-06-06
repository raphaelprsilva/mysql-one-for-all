SELECT
	c.cancao AS cancao,
  COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON hr.cancao_id = c.id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
