defmodule Email.SendEmail do
  import Bamboo.Email

  def send_email(title, message) do
    new_email()
    |> to("meu@email.com")
    |> from("meu@email.com")
    |> subject(title)
    |> text_body(message)
    |> Email.Mailer.deliver_now
  end
end
