# Blogger

Sample of `many_to_many` association and operations.

```sh
# clone repository
$ git clone git@github.com:mattsan/user_relationship_sample.git
# or git clone https://github.com/mattsan/user_relationship_sample.git
$ cd user_relationship_sample

# get packages
$ mix deps.get

# create database
$ mix ecto.create

# migrate database
$ mix ecto.migrate

# seed initial data
$ mix run priv/repo/seeds.exs

# show all users
$ mix run -e 'IO.inspect Blogger.User |> Blogger.Repo.all()'

# show a user
$ mix run -e 'IO.inspect Blogger.User |> Ecto.Query.first() |> Blogger.Repo.one()'

# show followers of the user
$ mix run -e 'Blogger.User |> Ecto.Query.first() |> Blogger.Repo.one() |> Ecto.assoc(:followers) |> Blogger.Repo.all()'

# show users following the user
$ mix run -e 'Blogger.User |> Ecto.Query.first() |> Blogger.Repo.one() |> Ecto.assoc(:following) |> Blogger.Repo.all()'
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `blogger` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:blogger, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/blogger](https://hexdocs.pm/blogger).
