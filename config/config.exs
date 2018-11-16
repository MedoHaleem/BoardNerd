# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :board_nerd,
  ecto_repos: [BoardNerd.Repo]

# Configures the endpoint
config :board_nerd, BoardNerdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pRWtWljpnJzXN0v0PnmHdT1apu7mLT2ZDrHzkZECHdkDuC6uYENKV8g8WX54wYFk",
  render_errors: [view: BoardNerdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BoardNerd.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
