defmodule Blogger.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Blogger.Repo
    ]

    opts = [strategy: :one_for_one, name: Blogger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
