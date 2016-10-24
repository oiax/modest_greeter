defmodule ModestGreeter.HelloController do
  use ModestGreeter.Web, :controller

  def show(conn, params) do
    render conn, "show.html", name: params["name"] || "world"
  end
end
