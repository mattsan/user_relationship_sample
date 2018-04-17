alias Blogger.{Repo, User, Relationship}
import Ecto.Changeset

users =
  1..10
  |> Enum.map(fn _ ->
      Repo.insert!(%User{name: Faker.Name.name})
    end)

users
|> Enum.each(fn follower ->
    users |> Enum.each(fn followed ->
      if follower.id != followed.id && :rand.uniform(3) < 3 do
        %Relationship{}
        |> change()
        |> put_assoc(:follower, follower)
        |> put_assoc(:followed, followed)
        |> Repo.insert()
      end
    end)
  end)

# Ecto.assoc(u1, :followers) |> Repo.aggregate(:count, :id)
# Ecto.assoc(u1, :following) |> Repo.aggregate(:count, :id)
