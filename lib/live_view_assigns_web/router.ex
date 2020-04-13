defmodule LiveViewAssignsWeb.Router do
  use LiveViewAssignsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_root_layout, {LiveViewAssignsWeb.LayoutView, :root}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveViewAssignsWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/assigns", Assigns
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveViewAssignsWeb do
  #   pipe_through :api
  # end
end
