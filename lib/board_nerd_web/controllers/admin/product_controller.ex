defmodule BoardNerdWeb.Admin.ProductController do
  use BoardNerdWeb, :controller
  alias BoardNerd.Games

  def new(conn, _) do
     product = Games.new_product()
     categories = Games.list_categories
     |> Enum.map(&{"#{&1.name}", &1.id})
     render(conn, "new.html", product: product, categories: categories)
  end

  def create(conn, %{"product" => product_params}) do
    with {:ok, _category} <- Games.create_product(product_params) do
      conn
      |> put_flash(:info, "Product created successfully!")
      |> redirect(to: page_path(conn, :index))
    end
  end

end
