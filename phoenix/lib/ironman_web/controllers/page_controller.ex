defmodule IronmanWeb.PageController do
  use IronmanWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
