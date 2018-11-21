defmodule BoardNerdWeb.Router do
  use BoardNerdWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BoardNerdWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController, only: [:show, :create]
    get "/register", UserController, :new
    resources("/sessions", SessionController, only: [:create])
    get "/login", SessionController, :new
    get "/logout", SessionController, :delete
    resources "/products", ProductController, only: [:show]
  end


  scope "/admin", BoardNerdWeb do
    pipe_through :browser

    resources "/categories", CategoryController, only: [:new, :create]
    resources "/products", ProductController, only: [:new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", BoardNerdWeb do
  #   pipe_through :api
  # end
end
