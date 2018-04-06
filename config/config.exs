# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir,
  ecto_repos: [Elixir.Repo]

# Configures the endpoint
config :elixir, Elixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u1B8BNs7nT95t2P4Ygco1GWL1fWUWzs2xYIpLQdg3FScuW5QwR6EFR5qvdRjJsnP",
  render_errors: [view: Elixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
