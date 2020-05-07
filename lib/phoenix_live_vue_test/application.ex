defmodule PhoenixLiveVueTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the endpoint when the application starts
      PhoenixLiveVueTestWeb.Endpoint
      # Starts a worker by calling: PhoenixLiveVueTest.Worker.start_link(arg)
      # {PhoenixLiveVueTest.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixLiveVueTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhoenixLiveVueTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
