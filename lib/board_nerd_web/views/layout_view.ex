defmodule BoardNerdWeb.LayoutView do
  use BoardNerdWeb, :view
  alias BoardNerd.Games

  def get_username(conn) do
    case Plug.Conn.get_session(conn, :user) do
      nil -> nil
      user -> user.username
    end
  end

  def get_categories() do
      Games.list_categories()
  end

  def logged_in?(conn) do
    case Plug.Conn.get_session(conn, :user) do
      nil -> false
      _user -> true
    end
  end
end
