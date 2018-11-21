defmodule BoardNerd.Repo.Migrations.AddCategoryIdToProductTable do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :category_id, references(:categories)
    end
  end
end
