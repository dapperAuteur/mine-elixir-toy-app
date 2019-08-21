# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mine,
  ecto_repos: [Mine.Repo]

# Configures the endpoint
config :mine, MineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v+cb6ddJmwQrU69ner5CK9XWf2DPM8dcju5XT5AIO42N/8XmY4kMa97lA1vBKfJ4",
  render_errors: [view: MineWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mine.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
