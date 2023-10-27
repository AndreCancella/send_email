defmodule SendEmailTest do
  alias Email.SendEmail
  use ExUnit.Case

  describe "send_email/2" do
    test "should sending email" do
      title = "Teste"
      text_body = "Esse é o teste pra verificar se o email tá enviando"

      {:ok, email} = SendEmail.send_email(title, text_body)

      assert email.subject == title
      assert email.text_body == text_body
    end
  end
end
