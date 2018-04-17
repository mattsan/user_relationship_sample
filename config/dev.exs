use Mix.Config

config :blogger, Blogger.Repo,
  adapter: Sqlite.Ecto2,
  database: "blogger_dev.sqlite3"
