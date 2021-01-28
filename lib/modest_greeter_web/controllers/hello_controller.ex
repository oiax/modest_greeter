defmodule ModestGreeterWeb.HelloController do
  use ModestGreeterWeb, :controller

  def show(conn, _params) do
    render(conn, "show.html")
  end
end
