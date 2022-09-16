defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context.
  """

  alias Rumbl.Accounts.User

  @spec list_users() :: [User.t()]
  def list_users do
    [
      %User{id: 1, name: "José Valim", user_name: "valim"},
      %User{id: 2, name: "Bruce Tate", user_name: "tate"},
      %User{id: 3, name: "Chris McCord", user_name: "chris"}
    ]
  end

  @spec get_user(id :: integer()) :: User.t() | nil
  def get_user(id) do
    list_users()
    |> Enum.find(&(&1.id == id))
  end

  @spec get_user_by(params :: Keyword.t()) :: [User.t()]
  def get_user_by(params) do
    list_users()
    |> Enum.filter(fn user ->
      Enum.all?(params, fn {key, value} -> Map.get(user, key) == value end)
    end)
  end
end
