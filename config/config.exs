import Config

config :musicdb, Musicdb.Repo,
  database: "musicdb_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

  config :musicdb, ecto_repos: [Musicdb.Repo]
