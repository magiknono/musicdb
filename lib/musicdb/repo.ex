defmodule Musicdb.Repo do
  use Ecto.Repo,
    otp_app: :musicdb,
    adapter: Ecto.Adapters.Postgres
end
