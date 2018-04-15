defmodule Columbo.Mixfile do
  use Mix.Project

  def project do
    [app: :columbo,
      version: "2.0.0",
      language: :erlang,
      deps: deps(Mix.env()),
      description: "Erlang service discovery and tracking system for clusters",
      package: package(),
      source_url: "https://github.com/aruki-delivery/columbo",
      homepage_url: "https://hex.pm/packages/columbo",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test],
    ]
  end

  defp deps(_) do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def package do
    [ maintainers: ["cblage"],
      licenses: ["Apache License 2.0"],
      links: %{"GitHub" => "https://github.com/aruki-delivery/columbo" } ]
  end
end