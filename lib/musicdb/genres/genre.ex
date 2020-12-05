defmodule Musicdb.Genres.Genre do
  use Ecto.Schema
  @moduledoc false
  schema "genres" do
    field(:name, :string)
    many_to_many(:albums, Musicdb.Albums.Album, join_through: "albums_genres")
  end
end
