defmodule BoardNerdWeb.Admin.CategoryController do
  use BoardNerdWeb, :controller
  alias BoardNerd.Games

  def new(conn, _) do
     category = Games.new_category()
     render(conn, "new.html", category: category)
  end

  def create(conn, %{"category" => category_params}) do
    with {:ok, _category} <- Games.create_category(category_params) do
      conn
      |> put_flash(:info, "Category created successfully!")
      |> redirect(to: page_path(conn, :index))
    end
  end

  def show(conn, %{"id" => id}) do
    category = Games.get_category!(id)
    products= category.products
    render(conn, "show.html", category: category, products: products)
  end

end
