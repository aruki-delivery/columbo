defmodule Columbo.Mixfile do
  use Mix.Project

  def project do
    [app: :columbo,
      version: "0.1.0",
      language: :erlang,
      deps: deps(Mix.env())]
  end

  defp deps(_) do
    []
  end
end