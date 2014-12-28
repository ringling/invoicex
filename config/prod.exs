use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :invoicex, Invoicex.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "aMKf9zzQoaZqK7Z9wHJVW6SYWljSlt9D7y5CzIZ34tBSe0zv6WDRdo4Bk22sCT4j"

config :logger,
  level: :info
