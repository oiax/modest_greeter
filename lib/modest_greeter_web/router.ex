defmodule ModestGreeterWeb.Router do
  use ModestGreeterWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ModestGreeterWeb do
    pipe_through :browser

    get "/", TopController, :index
    get "/hello", HelloController, :show
    get "/hello/:name", HelloController, :show
  end
end
