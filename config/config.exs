# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :watchlist,
  ecto_repos: [Watchlist.Repo]

# Configures the endpoint
config :watchlist, Watchlist.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tTVOWwwara4ew5Wtw7D/DnapyucmcU/ncyQfIDCec7/SRjeQhWqwN9kgrrp1H5DG",
  render_errors: [view: Watchlist.ErrorView, accepts: ~w(json)],
  pubsub: [name: Watchlist.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
