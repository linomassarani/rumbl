defmodule RumblWeb.UserController do
  @moduledoc """
  User Controller.
  """
  use RumblWeb, :controller

  alias Rumbl.Accounts

  @spec index(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  @spec show(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def show(conn, %{"id" => user_id}) do
    user = user_id |> String.to_integer() |> Accounts.get_user()
    render(conn, "show.html", user: user)
  end
end
