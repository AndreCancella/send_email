use Mix.Config

config :email, Email.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: "sandbox.smtp.mailtrap.io",
  hostname: "sandbox.smtp.mailtrap.io",
  port: 2525,
  username: "ebd366f60bdc23", # or {:system, "SMTP_USERNAME"}
  password: "7e8ea3f461440b", # or {:system, "SMTP_PASSWORD"}
  tls: :never, # can be `:always` or `:never`
  allowed_tls_versions: [:"tlsv1", :"tlsv1.1", :"tlsv1.2"], # or {:system, "ALLOWED_TLS_VERSIONS"} w/ comma seprated values (e.g. "tlsv1.1,tlsv1.2")
  ssl: false, # can be `true`
  retries: 1,
  no_mx_lookups: false, # can be `true`
  auth: :if_available # can be `:always`. If your smtp relay requires authentication set it to `:always`.
