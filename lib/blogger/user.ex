defmodule Blogger.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :blog, :string
    many_to_many :followers, Blogger.User, join_through: "relationships", join_keys: [followed_id: :id, follower_id: :id]
    many_to_many :following, Blogger.User, join_through: "relationships", join_keys: [follower_id: :id, followed_id: :id]

    timestamps()
  end
end
