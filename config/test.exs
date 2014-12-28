use Mix.Config

config :invoicex, Invoicex.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
