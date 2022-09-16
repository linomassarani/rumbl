defmodule Rumbl.Accounts.User do
  @moduledoc """
  User schema.
  """
  defstruct [:id, :name, :user_name]

  @type t :: %__MODULE__{
          id: integer(),
          name: String.t(),
          user_name: String.t()
        }
end
