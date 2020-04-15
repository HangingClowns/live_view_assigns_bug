defmodule LiveViewAssignsWeb.PageView do
  use LiveViewAssignsWeb, :view

  def render_time(%{now: now} = _assigns) do
    now
    |> Time.truncate(:second)
    |> Time.to_iso8601()
  end
end
