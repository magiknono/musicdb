defmodule Musicdb.Artists.Artist do
  use Ecto.Schema

  schema "artists" do
    field(:name, :string)

    has_many :albums, Musicdb.Albums.Album
    has_many(:tracks, through: [:albums, :tracks])

  end
end
