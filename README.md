<div align="center">
  <img align="center" alt="Tiemi-MySQL" height="60" width="70" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original-wordmark.svg" />
  <h1>Projeto MySQL One For All</h1>
</div>

Projeto de MySQL onde, tendo um conjunto de dados "soltos", foi possível simular como seria, num cenário real, a normalização e criação de um banco de dados de uma empresa de streaming de música. O mesmo foi realizado no módulo de Back-end durante o curso de Desenvolvimento Web pela [Trybe](https://www.betrybe.com/).

## 🎯 Objetivo do projeto

Dada uma tabela não normalizada semelhante ao que poderia ser uma versão simplificada do banco de dados do Spotify. O trabalho consistiu de duas partes:

- Normalizar essa tabela, criar o schema no banco de dados local e populá-lo;

- Realizar os desafios no banco, previamente normalizado e populado.

Aviso: Os dados usados no projeto foram gerados aleatoriamente e não fazem referência real à informações de qualquer empresa.

## 🏦 Regras de negócio

Algumas regras são definidas para a criação do banco e suas tabelas.

- Cada pessoa usuária pode possuir apenas um plano.
- Uma pessoa artista pode ter vários álbuns;
- Uma pessoa artista pode ser seguida por várias pessoas usuárias.
- Cada álbum possui apenas uma pessoa artista como principal;
- Cada álbum possui várias canções.
- Consideramos que cada canção está contida em apenas um álbum.
- Uma pessoa usuária pode possuir apenas um plano;
- Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
- Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

## 📝 O que pratiquei

Neste projeto, foi possível:

- Modelar um banco de dados;
- Identificar entidades, atributos e relacionamentos;
- Construir um diagrama entidade-relacionamento (diagrama ER);
- Criar um banco de dados;
- Criar e modelar tabelas com base em um diagrama ER;
- Normalizar o banco de dados seguindo as Formas Normais.
- Criar condicionais no SQL usando IF e CASE;
- Manipular strings no SQL;
- Usar as diversas funções matemáticas do MySQL;
- Extrair informações específicas sobre datas de uma tabela;
- Utilizar as funções de agregação AVG, MIN, MAX, SUM e COUNT;
- Exibir e filtrar dados de forma agrupada com GROUP BY e HAVING.
- Utilizar INNER JOIN para combinar dados de duas ou mais tabelas;
- Utilizar LEFT JOIN e RIGHT JOIN para combinar dados de duas ou mais tabelas;

## 🛠 Tecnologias utilizadas

- MySQL <img align="center" alt="Tiemi-MySQL" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" />
- MySQL Workbench

## 📂 Arquivos desenvolvidos

Nos arquivos de `desafio1.sql` a `desafio8.sql`, estão as queries nas quais utilizadas no projeto.

## 📓 Fornecido pela [Trybe](https://www.betrybe.com/)

[Tabelas não normalizadas](./SpotifyClone-Non-NormalizedTable.xlsx)

## :rocket: Rodando o projeto na sua máquina

Antes de começar, é importante ter instalado em sua máquina as seguintes ferramentas:
[MySQL](https://www.mysql.com/), [MySQL Workbench](https://www.mysql.com/products/workbench/),
[Git](https://git-scm.com) e [Node.js](https://nodejs.org/en/).

Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/)!

### Rodando com Docker

- É necessário ter o [Docker](https://www.docker.com/) e [Docker Compose](https://docs.docker.com/compose/install/#install-compose) instalados na sua máquina

  > Rode os serviços `node` e `db` com o comando `docker-compose up -d`.

  - Se você estiver usando o MySQL localmente, será necessário parar o serviço ou alterar a porta padrão (que no caso é a `3306`) para outro valor
  - Esses serviços irão inicializar um container chamado `one_for_all` e outro chamado `one_for_all_db`.
  - A partir daqui você pode rodar o container `one_for_all` via CLI ou abri-lo no VS Code.

> Use o comando `docker exec -it one_for_all bash`.

- Ele te dará acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano;

- As credencias de acesso ao banco de dados estão definidas no arquivo `docker-compose.yml`, e são acessíveis no container através das variáveis de ambiente `MYSQL_USER` e `MYSQL_PASSWORD`.

- Instale as dependências [**Caso existam**] com `npm install`

- Ao utilizar o Docker, **TODOS** os comandos disponíveis no `package.json` (npm start, npm test, npm run dev, ...) devem ser executados **DENTRO** do container, ou seja, no terminal que aparece após a execução do comando `docker exec` citado acima.

- Para que você consiga rodar o seu projeto com docker é fundamental que o seu docker compose esteja na **versão 1.29** primeiro verifique sua versão

  - `docker-compose --version`

- Se não for a versão 1.29, faça os seguintes comandos para atualizar a versão:
  - `sudo rm /usr/local/bin/docker-compose`
  - `sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose`
  - `sudo chmod +x /usr/local/bin/docker-compose`

### Rodando Localmente

- Basta ter o MySQL instalado localmente, assim já estará apto à criar o banco e executar as queries
- Instale as dependências _[Caso existam]_ com `npm install`

Comandos para clonar o projeto na sua máquina:

1. Clone o repositório

- `git clone git@github.com:raphaelprsilva/mysql-one-for-all.git`.
- Entre na pasta do repositório que você acabou de clonar:
  - `cd mysql-one-for-all`

2. Instale as dependências caso existam

- `npm install`

3. Crie uma branch a partir da branch `main`

- Verifique que você está na branch `main`
  - Exemplo: `git branch`
- Se não estiver, mude para a branch `main`
  - Exemplo: `git checkout main`

## 🤝 Colaboradores

<table>
  <tr>
    <td align="center">
      <a href="http://github.com/raphaelprsilva">
        <img src="https://avatars.githubusercontent.com/u/50886915?s=400&u=fa3df0caab0c83b9f88678abd93e8d5a81a5cd6f&v=4" width="100px;" alt="Foto de Raphael Silva no GitHub"/><br>
        <sub>
          <b>raphaelprsilva</b>
        </sub>
      </a>
    </td>
  </tr>
</table>
