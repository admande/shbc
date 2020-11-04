defmodule Shbc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Shbc.Repo,
      # Start the Telemetry supervisor
      ShbcWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Shbc.PubSub},
      # Start the Endpoint (http/https)
      ShbcWeb.Endpoint
      # Start a worker by calling: Shbc.Worker.start_link(arg)
      # {Shbc.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Shbc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ShbcWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
