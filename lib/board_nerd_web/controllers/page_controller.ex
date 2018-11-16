defmodule BoardNerdWeb.PageController do
  use BoardNerdWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
