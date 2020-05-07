defmodule PhoenixLiveVueTestWeb.PageController do
  use PhoenixLiveVueTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
