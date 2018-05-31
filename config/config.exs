# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :docker_service_a_ex,
  ecto_repos: [DockerServiceAEx.Repo]

# Configures the endpoint
config :docker_service_a_ex, DockerServiceAExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t7Nvg33ZVkj7PrG0ODx0xKATXhgRSB4+3r11CnwRnVHha4tu2YaasBQn4q/49Y3f",
  render_errors: [view: DockerServiceAExWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DockerServiceAEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
