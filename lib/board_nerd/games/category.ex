defmodule BoardNerd.Games.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias BoardNerd.Games.Product

  schema "categories" do
    field :name, :string

    has_many :product, Product

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
