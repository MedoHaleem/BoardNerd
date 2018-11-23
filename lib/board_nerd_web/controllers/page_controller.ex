defmodule BoardNerdWeb.PageController do
  use BoardNerdWeb, :controller
  alias BoardNerd.Games
  def index(conn, _params) do
    products = Games.list_products()
    render conn, "index.html", products: products
  end
end
