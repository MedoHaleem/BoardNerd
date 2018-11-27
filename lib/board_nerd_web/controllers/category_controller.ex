defmodule BoardNerdWeb.CategoryController do
  use BoardNerdWeb, :controller
  alias BoardNerd.Games

  def show(conn, %{"id" => id}) do
    category = Games.get_category!(id)
    products= category.products
    render(conn, "show.html", category: category, products: products)
  end

end
