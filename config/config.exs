# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shbc,
  ecto_repos: [Shbc.Repo]

# Configures the endpoint
config :shbc, ShbcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tqJWRXT3g4A/TQjzNK7mOVfUeXEulhCiPi2UO/drFYXkhy6uWw/M9xxntvpVDwZQ",
  render_errors: [view: ShbcWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Shbc.PubSub,
  live_view: [signing_salt: "QsEsgjhA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
