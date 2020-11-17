defmodule Musicdb.Artists.Artist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "artists" do
    field(:name, :string)

    has_many :albums, Musicdb.Albums.Album
    has_many(:tracks, through: [:albums, :tracks])

    timestamps()
  end

  def changeset(artist, attrs) do
    artist
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
