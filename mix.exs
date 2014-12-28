defmodule Invoicex.Mixfile do
  use Mix.Project

  def project do
    [app: :invoicex,
     version: "0.0.1",
     elixir: "~> 1.0.2",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Invoicex, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.7.2" },
     {:cowboy, github: "ninenines/cowboy", tag: "1.0.1", override: true}]
  end
end
