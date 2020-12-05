defmodule Musicdb.Artists do
  alias Musicdb.Repo
  alias Musicdb.Artists.Artist
  import Ecto.Query
  @moduledoc false

  def create_artist(attrs) do
    %Artist{}
    |> Artist.update_or_create_changeset(attrs)
    |> Repo.insert()
  end

  def update_artist(%Artist{} = artist, attrs) do
    artist
    |> Artist.update_or_create_changeset(attrs)
    |> Repo.update()
  end

  def list_artists do
    Repo.all(Artist)
  end

  def get_artist_by_id!(id) do
    Repo.get!(Artist, id)
  end

  def get_artist_by_name(name) do
    Repo.get_by(Artist, name: name)
  end

  def delete_artist_by_id(id) do
    artist = Repo.get(Artist, id)
    Repo.delete(artist)
  end

  def delete_artist(%Artist{} = artist) do
    Repo.delete(artist)
  end

  def delete_artist_by_name(name) do
    artist = Repo.get_by(Artist, name: name)
    Repo.delete!(artist)
  end

  def list_albums_assoc_with_artists do
    # Repo.all(from a in Artist, preload: :albums)
    Artist
    |> Repo.all()
    |> Repo.preload(:albums)
  end

  def list_albums_and_tracks_assoc_nested_with_artists do
    Repo.all(from a in Artist, preload: [albums: :tracks])
  end

  def add_new_album_name_by_artist_id(artist_id, album_name) do
    artist = Repo.get(Artist, artist_id)
    new_album = Ecto.build_assoc(artist, :albums, title: album_name)
    Repo.insert(new_album)

    # Repo.get(Artist, artist_id)
    # |> Ecto.build_assoc(:albums, title: album_name)
    # |> Repo.insert
  end

  def list_albums_from_artist_name(artist_name) do
    artist = Repo.one(from(a in Artist, where: a.name == ^artist_name, preload: :albums))
    Enum.map(artist.albums, & &1.title)
    # add changeset for not nil with cond
  end
end
