defmodule MineWeb.PageController do
  use MineWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
