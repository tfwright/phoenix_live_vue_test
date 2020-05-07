# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_live_vue_test, PhoenixLiveVueTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rE+bY1PBzSYyTU1lgZmVfudEYy4XHeyY/3AkmiqsLFEJoeB5a6TWTXg8vx87O6h8",
  render_errors: [view: PhoenixLiveVueTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLiveVueTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
