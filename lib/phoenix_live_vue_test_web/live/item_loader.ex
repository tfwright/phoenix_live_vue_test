defmodule PhoenixLiveVueTestWeb.Live.ItemLoader do
  use Phoenix.LiveView

  def render(assigns) do
    PhoenixLiveVueTestWeb.LayoutView.render("items.html", assigns)
  end

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:items, [1])

    {:ok, socket}
  end

  def handle_event(
        "inc",
        _params,
        %{assigns: %{items: items}} = socket
      ) do
    socket =
      socket
      |> assign(:items, [Enum.count(items) + 1 | items])

    IO.inspect(socket.assigns.items)

    {:noreply, socket}
  end
end
