defmodule LiveViewAssignsWeb.Assigns do
    use Phoenix.LiveView
    
    def render(assigns), do: LiveViewAssignsWeb.PageView.render("assigns.html", assigns)

    def mount(_params, _session, socket) do
        if connected?(socket), do: Process.send_after(self(), :update, 1_000)
        {:ok, assign(socket, :now, Time.utc_now())}
    end

    def handle_info(:update, socket) do
        Process.send_after(self(), :update, 1_000)
        {:noreply, assign(socket, :now, Time.utc_now())}
    end
end