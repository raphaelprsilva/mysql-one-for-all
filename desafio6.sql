SELECT
  CONVERT(FORMAT(MIN(p.preco), 2), CHAR) AS faturamento_minimo,
  CONVERT(FORMAT(MAX(p.preco), 2), CHAR) AS faturamento_maximo,
  CONVERT(FORMAT(AVG(p.preco), 2), CHAR) AS faturamento_medio,
  CONVERT(FORMAT(SUM(p.preco), 2), CHAR) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON u.plano_id = p.id;
