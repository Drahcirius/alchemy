defmodule Alchemy.Mixfile do
  use Mix.Project

  def project do
    [app: :alchemy,
     version: "0.1.5",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [mod: {Script, []},
     extra_applications: [:logger],
     applications: [:httpotion] ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpotion, "~> 3.0.2"},
     {:earmark, "~> 0.1", only: :dev},
     {:socket, "~> 0.3"},
     {:websocket_client, git: "https://github.com/Kraigie/websocket_client.git"},
     {:ex_doc, "~> 0.11", only: :dev},
     {:poison, "~> 3.0"}]
  end
end
