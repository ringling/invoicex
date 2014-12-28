defmodule Invoicex.Endpoint do
  use Phoenix.Endpoint, otp_app: :invoicex

  plug Plug.Static,
    at: "/", from: :invoicex

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_invoicex_key",
    signing_salt: "j5wJ9neV",
    encryption_salt: "swAh9e0T"

  plug :router, Invoicex.Router
end
