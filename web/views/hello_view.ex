defmodule ModestGreeter.HelloView do
  use ModestGreeter.Web, :view

  def document_title(%{ view_template: "show.html", name: name }) do
    "SimpleGreeter (#{name})"
  end

  def document_title(assigns) do
    super(assigns)
  end
end
