# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :elixir_demo, ElixirDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FuM6TlwXN+m/m6cXWnQ4RhVkFxNJ/5l/ry9bY0wGtwqhjgfYItvMXOAwQbJgh/0q",
  render_errors: [view: ElixirDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
