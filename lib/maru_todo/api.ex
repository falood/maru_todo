defmodule MaruTodo.API do
  use Maru.Router
  plug CORSPlug
  plug Plug.Logger

  mount MaruTodo.Router.Homepage

  rescue_from :all, as: e do
    IO.inspect(e)
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
