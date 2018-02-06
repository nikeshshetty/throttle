# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :throttle,
  ecto_repos: [Throttle.Repo]

# Configures the endpoint
config :throttle, ThrottleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eh1Y6AYXZnw/M2aTH+RQJOYA1uOsGULXK9e8vxMMh2dm0OsMesQi3hoy4YHlZxei",
  render_errors: [view: ThrottleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Throttle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
