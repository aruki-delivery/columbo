defmodule Columbo.Application do
    use Application
    require Logger

    def start(type, args) do
      Logger.info("#{__MODULE__}.start(#{inspect type}}, #{inspect args})...")
      {:ok, columbo_sup} = Supervisor.start_link([Columbo], [strategy: :one_for_one, name: Columbo.Application.Supervisor])
      Logger.info("#{__MODULE__} started Columbo - #{inspect columbo_sup}")
      {:ok, columbo_sup}
    end
end