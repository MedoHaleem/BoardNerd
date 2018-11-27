defmodule BoardNerdWeb.ProductController do
  use BoardNerdWeb, :controller
  alias BoardNerd.Games



  def show(conn, %{"id" => id}) do
    product = Games.get_product!(id)
    render(conn, "show.html", product: product)
  end

end
