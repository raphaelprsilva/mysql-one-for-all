SELECT
	u.usuario AS usuario,
  IF(MAX(hr.data_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON hr.usuario_id = u.id
GROUP BY usuario
ORDER BY usuario;
