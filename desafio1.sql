DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

-- Tabela Planos

CREATE TABLE SpotifyClone.planos (
  id INTEGER PRIMARY KEY,
  plano VARCHAR(50) NOT NULL,
  preco DOUBLE NOT NULL
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.planos(id, plano, preco) VALUES(1, 'gratuito', 0);
INSERT INTO SpotifyClone.planos(id, plano, preco) VALUES(2, 'falimiar', 7.99);
INSERT INTO SpotifyClone.planos(id, plano, preco) VALUES(3, 'universitário', 5.99);
INSERT INTO SpotifyClone.planos(id, plano, preco) VALUES(4, 'pessoal', 6.99);

-- Tabela Artistas

CREATE TABLE SpotifyClone.artistas (
  id INTEGER PRIMARY KEY,
	artista VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.artistas(id, artista) VALUES(1, 'Walter Phoenix');
INSERT INTO SpotifyClone.artistas(id, artista) VALUES(2, 'Peter Strong');
INSERT INTO SpotifyClone.artistas(id, artista) VALUES(3, 'Lance Day');
INSERT INTO SpotifyClone.artistas(id, artista) VALUES(4, 'Freedie Shannon');
INSERT INTO SpotifyClone.artistas(id, artista) VALUES(5, 'Tyler Isle');
INSERT INTO SpotifyClone.artistas(id, artista) VALUES(6, 'Fog');

-- Tabela Usuários

CREATE TABLE SpotifyClone.usuarios (
  id INTEGER PRIMARY KEY,
  usuario VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  data_assinatura DATE,
  FOREIGN KEY (plano_id) REFERENCES planos(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(1, 'Thati', 23, 1, '2019-10-20');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(2, 'Cintia', 35, 2, '2017-12-30');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(3, 'Bill', 20, 3, '2019-06-05');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(4, 'Roger', 45, 4, '2020-05-13');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(5, 'Norman', 58, 4, '2017-02-17');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(6, 'Patrick', 33, 2, '2017-01-06');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(7, 'Vivian', 26, 3, '2018-01-05');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(8, 'Carol', 19, 3, '2018-02-14');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(9, 'Angelina', 42, 2, '2018-04-29');
INSERT INTO SpotifyClone.usuarios(id, usuario, idade, plano_id, data_assinatura) VALUES(10, 'Paul', 46, 2, '2017-01-17');

-- Tabela Albuns

CREATE TABLE SpotifyClone.albuns(
  id INTEGER PRIMARY KEY,
  album VARCHAR(50) NOT NULL,
  ano_lancamento INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(1, 'Envious', 1990, 1);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(2, 'Exuberant', 1993, 1);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(3, 'Hallowed Steam', 1995, 2);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(4, 'Incandescent', 1998, 3);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(5, 'Temporary Culture', 2001, 4);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(6, 'Library of liberty', 2003, 4);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(7, 'Chained Down', 2007, 5);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(8, 'Cabinet of fools', 2012, 5);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(9, 'No guarantees', 2015, 5);
INSERT INTO SpotifyClone.albuns(id, album, ano_lancamento, artista_id) VALUES(10, 'Apparatus', 2015, 6);

-- Tablea cancoes

CREATE TABLE SpotifyClone.cancoes (
  id INTEGER PRIMARY KEY,
  cancao VARCHAR(70) NOT NULL,
  duracao_segundos INT NOT NULL,
  artista_id INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(id),
  FOREIGN KEY (album_id) REFERENCES albuns(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(1, "Soul For Us", 200, 1, 1);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(2, "Reflections Of Magic", 163, 1, 1);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(3, "Dance With Her Own", 116, 1, 1);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(4, "Troubles Of My Inner Fire", 203, 1, 2);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(5, "Time Fireworks", 152, 1, 2);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(6, "Magic Circus", 105, 2, 3);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(7, "Honey, So Do I", 207, 2, 3);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(8, "Sweetie, Let's Go Wild", 139, 2, 3);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(9, "She Knows", 244, 2, 3);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(10, "Fantasy For Me", 100, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(11, "Celebration Of More", 146, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(12, "Rock His Everything", 223, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(13, "Home Forever", 231, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(14, "Diamond Power", 241, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(15, "Let's Be Silly", 132, 3, 4);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(16, "Thang Of Thunder", 240, 4, 5);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(17, "Words Of Her Life", 185, 4, 5);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(18, "Without My Streets", 176, 4, 5);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(19, "Need Of The Evening", 190, 4, 6);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(20, "History Of My Roses", 222, 4, 6);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(21, "Without My Love", 111, 4, 6);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(22, "Walking And Game", 123, 4, 6);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(23, "Young And Father", 197, 4, 6);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(24, "Finding My Traditions", 179, 5, 7);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(25, "Walking And Man", 229, 5, 7);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(26, "Hard And Time", 135, 5, 7);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(27, "Honey, I'm A Lone Wolf", 150, 5, 7);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(28, "She Thinks I Won't Stay Tonight", 166, 5, 8);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(29, "He Heard You're Bad For Me", 154, 5, 8);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(30, "He Hopes We Can't Stay", 210, 5, 8);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(31, "I Know I Know", 117, 5, 8);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(32, "He's Walking Away", 159, 5, 9);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(33, "He's Trouble", 138, 5, 9);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(34, "I Heard I Want To Bo Alone", 120, 5, 9);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(35, "I Ride Alone", 151, 5, 9);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(36, "Honey", 79, 6, 10);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(37, "You Cheated On Me", 95, 6, 10);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(38, "Wouldn't It Be Nice", 213, 6, 10);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(39, "Baby", 136, 6, 10);
INSERT INTO SpotifyClone.cancoes(id, cancao, duracao_segundos, artista_id, album_id) VALUES(40, "You Make Me Feel So..", 83, 6, 10);

-- Tablea historico_reproducao

CREATE TABLE SpotifyClone.historico_reproducao (
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
  data_reproducao TIMESTAMP,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(1, 36, '2020-02-28 10:45:55');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(1, 25, '2020-05-02 05:30:35');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(1, 23, '2020-03-06 11:22:33');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(1, 14, '2020-08-05 08:05:17');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(1, 15, '2020-09-14 16:32:22');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(2, 34, '2020-01-02 07:40:33');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(2, 24, '2020-05-16 06:16:22');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(2, 21, '2020-10-09 12:27:48');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(2, 39, '2020-09-21 13:14:46');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(3, 6, '2020-11-13 16:55:13');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(3, 3, '2020-12-05 18:38:30');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(3, 26, '2020-07-30 10:00:00');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(4, 2, '2021-08-15 17:10:10');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(4, 35, '2021-07-10 15:20:30');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(4, 27, '2021-01-09 01:44:33');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(5, 7, '2020-07-03 19:33:28');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(5, 12, '2017-02-24 21:14:22');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(5, 14, '2020-08-06 15:23:43');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(5, 1, '2020-11-10 13:52:27');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(6, 38, '2019-02-07 20:33:48');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(6, 29, '2017-01-24 00:31:17');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(6, 30, '2017-10-12 12:35:20');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(6, 22, '2018-05-29 14:56:41');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(7, 5, '2018-05-09 22:30:49');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(7, 4, '2020-07-27 12:52:58');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(7, 11, '2018-01-16 18:40:43');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(8, 39, '2018-03-21 16:56:40');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(8, 40, '2020-10-18 13:38:05');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(8, 32, '2019-05-25 08:14:03');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(8, 33, '2021-08-15 21:37:09');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(9, 16, '2021-05-24 17:23:45');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(9, 17, '2018-12-07 22:48:52');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(9, 8, '2021-03-14 06:14:26');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(9, 9, '2020-04-01 03:36:00');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(10, 20, '2017-02-06 08:21:34');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(10, 21, '2017-12-04 05:33:43');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(10, 12, '2017-07-27 05:24:49');
INSERT INTO SpotifyClone.historico_reproducao(usuario_id, cancao_id, data_reproducao) VALUES(10, 13, '2017-12-25 01:03:57');

-- Tablea usuarios_seguindo_artistas

CREATE TABLE SpotifyClone.usuarios_seguindo_artistas (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (artista_id) REFERENCES artistas(id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(1, 1);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(1, 4);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(1, 3);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(2, 1);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(2, 3);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(3, 2);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(3, 1);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(4, 4);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(5, 5);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(5, 6);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(6, 6);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(6, 3);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(6, 1);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(7, 2);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(7, 5);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(8, 1);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(8, 5);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(9, 6);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(9, 4);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(9, 3);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(10, 2);
INSERT INTO SpotifyClone.usuarios_seguindo_artistas(usuario_id, artista_id) VALUES(10, 6);
