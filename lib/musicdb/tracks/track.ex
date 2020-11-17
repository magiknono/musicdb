defmodule Musicdb.Tracks.Track do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tracks" do
    field(:title, :string)
    field(:duration, :integer, default: 1)
    field(:index, :integer)
    field(:number_of_plays, :integer)

    belongs_to :album, Musicdb.Albums.Album

    timestamps()
  end

  def changeset(track, attrs) do
    track
    |> cast(attrs, [:title, :duration, :index, :number_of_plays])
    |> validate_required([:title])
  end
end
