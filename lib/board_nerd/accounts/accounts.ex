defmodule BoardNerd.Accounts do
  import Ecto.Query, warn: false

  alias BoardNerd.Repo
  alias BoardNerd.Accounts.User

  def list_user do: Repo.all(User)

  def new_user, do: User.changeset(%User{}, %{})

  def create_user(attrs \\ %{}) do
    %User{} |> User.changeset(attrs) |> Repo.insert
  end
end