SELECT
  u.usuario AS usuario,
  COUNT(hr.cancao_id) AS qtde_musicas_ouvidas,
  ROUND((SUM(cc.duracao_segundos) / 60), 2) AS total_minutos
  FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.historico_reproducao AS hr ON hr.usuario_id = u.id
  INNER JOIN SpotifyClone.cancoes AS cc ON cc.id = hr.cancao_id
  GROUP BY usuario
  ORDER BY usuario;
