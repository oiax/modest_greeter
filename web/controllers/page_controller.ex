defmodule ModestGreeter.PageController do
  use ModestGreeter.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
