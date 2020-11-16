defmodule Musicdb.Artists.Artist do
  use Ecto.Schema

  schema "artists" do
    field(:name, :string)
    field(:release_date, :date)

    has_many(:albums, Musicdb.Albums.Album)
  end
end
