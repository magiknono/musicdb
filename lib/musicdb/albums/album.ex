defmodule Musicdb.Albums.Album do
  use Ecto.Schema

  schema "albums" do
    field(:title, :string)
    field(:release_date, :date)

    has_many :tracks, Musicdb.Tracks.Track
    belongs_to :artist, Musicdb.Artists.Artist

  end
end
