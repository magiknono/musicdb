defmodule Musicdb.Artists do
  alias Musicdb.Repo
  alias Musicdb.Artists.Artist
  import Ecto.Query

  def create_artist(attrs) do
    %Artist{}
    |> Artist.changeset(attrs)
    |> Repo.insert()
  end

  def list_artists do
    Repo.all(Artist)
  end

  def show_artist_by_id(id) do
    Repo.get!(Artist, id)
  end

  def show_artist_by_name(name) do
    Repo.get_by!(Artist, name: name)
  end

  def delete_artist_by_name(name) do
    artist = Repo.get_by(Artist, name: name)
    Repo.delete!(artist)
  end

  def list_albums_assoc_with_artists do
    #Repo.all(from a in Artist, preload: :albums)
    Artist
    |> Repo.all()
    |> Repo.preload(:albums)
  end

  def list_albums_and_tracks_assoc_nested_with_artists do
    Repo.all(from a in Artist, preload: [albums: :tracks])
  end
end
