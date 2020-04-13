defmodule LiveViewAssignsWeb.PageController do
  use LiveViewAssignsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
