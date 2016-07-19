defmodule PasswordlessLoginApp.Router do
  use PasswordlessLoginApp.Web, :router

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

  scope "/", PasswordlessLoginApp do
    pipe_through [:browser, PasswordlessLoginApp.SimpleAuth]

    get "/", PageController, :index
    resources "/session", SessionController, only: [:new, :create, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", PasswordlessLoginApp do
  #   pipe_through :api
  # end
end
