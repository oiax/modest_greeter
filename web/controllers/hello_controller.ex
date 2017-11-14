defmodule ModestGreeter.HelloController do
  use ModestGreeter.Web, :controller

  def show(conn, _params) do
    render conn, "show.html", name: "Alice"
  end
end
