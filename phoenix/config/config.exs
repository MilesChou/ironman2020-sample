# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :ironman, IronmanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gr8R8AgMflv263AWXEu9gNZ3N5eBpdQ/VWkGKJiHw0+MyM61D3ZJ8nhdAiuuA9vl",
  render_errors: [view: IronmanWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ironman.PubSub,
  live_view: [signing_salt: "lP5PzcHv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
