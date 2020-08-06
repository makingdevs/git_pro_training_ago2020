# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :git_pro,
  ecto_repos: [GitPro.Repo]

# Configures the endpoint
config :git_pro, GitProWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F087gtGrn5LUMIZLoGi+4B2CYLaLnrbHxj54yDqUl8vSppkloHTz7cCBu0ZDVkyS",
  render_errors: [view: GitProWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GitPro.PubSub,
  live_view: [signing_salt: "i8FSgUU8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
