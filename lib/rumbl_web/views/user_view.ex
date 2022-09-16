defmodule RumblWeb.UserView do
  @moduledoc """
  User view.
  """
  use RumblWeb, :view

  defp first_name(user) do
    user.name |> String.split(" ") |> List.first() |> String.capitalize()
  end
end
