defmodule ModestGreeter.TopView do
  use ModestGreeter.Web, :view

  def document_title(assigns) do
    case assigns.view_template do
      "about.html" -> "ModestGreeter - このサイトについて"
      _ -> "ModestGreeter"
    end
  end
end
