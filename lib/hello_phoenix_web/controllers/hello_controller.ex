defmodule HelloPhoenixWeb.HelloController do
  use HelloPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |>Plug.Conn.assign(:messenger, messenger)
    |> render("show.html")
  end
end
