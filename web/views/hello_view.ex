defmodule ModestGreeter.HelloView do
  use ModestGreeter.Web, :view

  def document_title(assigns) do
      "ModestGreeter (#{assigns.name})"
  end
end
