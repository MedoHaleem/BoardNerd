alias BoardNerd.Repo
alias BoardNerd.Accounts
alias BoardNerd.Accounts.User

Repo.delete_all(User)

user_attrs = %{
  username: "test",
  email: "testuser@test.local",
  active: true,
  password: "password",
  password_confirmation: "password"
}

user =
  case Accounts.create_user(user_attrs) do
    {:ok, user} ->
      IO.puts("User created successfully!")
      user

    {:error, changeset} ->
      IO.puts("Failed to create user account!")
      IO.inspect(changeset)
      nil
  end
