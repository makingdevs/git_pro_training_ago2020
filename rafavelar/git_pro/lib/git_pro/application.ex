defmodule GitPro.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      GitPro.Repo,
      # Start the Telemetry supervisor
      GitProWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: GitPro.PubSub},
      # Start the Endpoint (http/https)
      GitProWeb.Endpoint
      # Start a worker by calling: GitPro.Worker.start_link(arg)
      # {GitPro.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GitPro.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GitProWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
