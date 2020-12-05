defmodule Musicdb.Albums.Album do
  use Ecto.Schema
  @moduledoc false

  schema "albums" do
    field(:title, :string)
    field(:release_date, :date)

    has_many(:tracks, Musicdb.Tracks.Track)
    belongs_to(:artist, Musicdb.Artists.Artist)
    many_to_many(:genres, Musicdb.Genres.Genre, join_through: "albums_genres")

    timestamps()
  end
end
