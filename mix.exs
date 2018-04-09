defmodule Columbo.Mixfile do
  use Mix.Project

  def project do
    [app: :columbo,
      version: "1.0.0",
      deps: deps(Mix.env()),
      description: "Erlang service discovery and tracking system for clusters",
      package: package(),
      source_url: "https://github.com/aruki-delivery/columbo",
      homepage_url: "https://hex.pm/packages/columbo"]
  end

  defp deps(_) do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end


  def application do
    [mod: {Columbo.Application, []},
      extra_applications: [:logger,],]
  end


  def package do
    [ maintainers: ["cblage"],
      licenses: ["Apache License 2.0"],
      links: %{"GitHub" => "https://github.com/aruki-delivery/columbo" } ]
  end
end