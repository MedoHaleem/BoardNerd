use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :board_nerd, BoardNerdWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :board_nerd, BoardNerd.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "password",
  database: "board_nerd_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
