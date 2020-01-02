defmodule ModestGreeterWeb.HelloController do
  use ModestGreeterWeb, :controller

  def show(conn, params) do
    render conn, "show.html", name: params["name"] || "world"
  end
end
