defmodule Blogger.Relationship do
  use Ecto.Schema

  alias Blogger.User

  schema "relationships" do
    belongs_to :follower, User, foreign_key: :follower_id
    belongs_to :followed, User, foreign_key: :followed_id
  end
end
