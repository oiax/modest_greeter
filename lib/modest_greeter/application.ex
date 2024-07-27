defmodule ModestGreeter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ModestGreeterWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:modest_greeter, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ModestGreeter.PubSub},
      # Start a worker by calling: ModestGreeter.Worker.start_link(arg)
      # {ModestGreeter.Worker, arg},
      # Start to serve requests, typically the last entry
      ModestGreeterWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ModestGreeter.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ModestGreeterWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
