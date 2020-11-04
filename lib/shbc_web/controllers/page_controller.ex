defmodule ShbcWeb.PageController do
  use ShbcWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
