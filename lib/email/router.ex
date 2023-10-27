defmodule Email.Router do
  alias Email.SendEmail
  use Plug.Router
  use Plug.Debugger
  require Logger

	plug(Plug.Logger, log: :debug)
	plug(:match)
	plug(:dispatch)

	get "/" do
		SendEmail.send_email("Teste", "Teste envio email");

	  send_resp(conn, 200, "Server rodando...")
	end

	match _ do
	  send_resp(conn, 404, "Pagina não encontrada")
	end

end
