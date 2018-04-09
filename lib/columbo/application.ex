defmodule Columbo.Application do
    use Application
    require Logger

    def start(type, args) do
        import Supervisor.Spec

        Logger.info("#{__MODULE__}.start(#{inspect type}}, #{inspect args})...")
        {:ok, columbo_sup} = Supervisor.start_link([Columbo], [strategy: :one_for_one, name: Columbo.Application.Supervisor])
        Logger.info("#{__MODULE__} started Columbo - #{inspect columbo_sup}")

        children = [
          supervisor(:columbo_sup, []),
        ]

        {:ok, super_pid} = Supervisor.start_link(children, [strategy: :one_for_one, name: Columbo.Endpoint.Supervisor])
        Logger.info("#{__MODULE__} started Columbo.Session - #{inspect columbo_sup}")
        {:ok, super_pid}
    end
  end