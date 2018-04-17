defmodule Blogger.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :blog, :string

    timestamps()
  end
end
