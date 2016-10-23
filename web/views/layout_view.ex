defmodule ModestGreeter.LayoutView do
  use ModestGreeter.Web, :view

  def document_title(assigns) do
    apply(assigns.view_module, :document_title, [assigns])
  end
end
