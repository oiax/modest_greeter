defmodule ModestGreeterWeb.HelloView do
  use ModestGreeterWeb, :view

  def document_title(assigns) do
    "ModestGreeter (#{assigns.name})"
  end
end
