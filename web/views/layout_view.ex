defmodule ModestGreeter.LayoutView do
  use ModestGreeter.Web, :view

  def document_title(assigns) do
    "SimpleGreeter (#{assigns.name})"
  end
end
