defmodule BoardNerd.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table (:users) do
      add :username, :string
      add :email, :string
      add :active, :boolean, default: true
      add :encrypted_password, :string

      timestamps()
    end

    create unique_index(:users, [:email, :username])
  end
end
