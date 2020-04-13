defmodule LiveViewAssignsWeb.PageView do
  use LiveViewAssignsWeb, :view

  def render_time(%{assigns: %{now: now}} = _socket) do
    now
    |> Time.truncate(:second)
    |> Time.to_iso8601()
  end
end
