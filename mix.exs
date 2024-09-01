defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.1.0",
      name: "Issues",
      source_url: "https://github.com/andreciobezerra/issues",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript_config()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0.0"},
      {:poison, "~> 3.1.0"},
      {:ex_doc, "~> 0.34.2"},
      {:earmark, "~> 1.2.4"}
    ]
  end

  defp escript_config() do
    [
      main_module: Issues.CLI
    ]
  end
end
