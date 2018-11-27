defmodule BoardNerd.Games.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias BoardNerd.Games.Category

  schema "products" do
    field :description, :string
    field :name, :string
    field :price, :integer
    field :quantity, :integer

    belongs_to(:category, Category)

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :price, :quantity, :description, :category_id])
    |> validate_required([:name, :price, :quantity, :description, :category_id])
  end
end
