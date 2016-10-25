defmodule ModestGreeter.Router do
  use ModestGreeter.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ModestGreeter do
    pipe_through :browser

    get "/", TopController, :index
    get "/about", TopController, :about
    get "/hello/:name", HelloController, :show
    get "/hello", HelloController, :show
  end
end
