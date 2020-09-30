defmodule Ironman.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      IronmanWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Ironman.PubSub},
      # Start the Endpoint (http/https)
      IronmanWeb.Endpoint
      # Start a worker by calling: Ironman.Worker.start_link(arg)
      # {Ironman.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ironman.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    IronmanWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
