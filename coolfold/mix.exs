defmodule Coolfold.MixProject do
  use Mix.Project

  def project do
    [
      app: :coolfold,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:benchee, "~> 1.0", only: :dev},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
