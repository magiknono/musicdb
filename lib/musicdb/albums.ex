defmodule Musicdb.Albums do
  alias Musicdb.Repo
  alias Musicdb.Albums.Album
  import Ecto.Query


  def list_albums do
    Repo.all(Album)
  end

  def show_album_by_id(id) do
    Repo.get!(Album, id)
  end

  def show_album_by_title(title) do
    Repo.get_by!(Album, title: title)
  end

  def delete_album_by_title(title) do
    album = Repo.get_by(Album, title: title)
    Repo.delete!(album)
  end

  def list_tracks_assoc_with_albums do
    # Repo.all(from a in Album, preload: :albums)
    Album
    |> Repo.all()
    |> Repo.preload(:tracks)
  end

  def show_tracks_assoc_with_albums_for_track_title(track_title) do
    q = from a in Musicdb.Albums.Album, join: t in assoc(a, :tracks), where: t.title == ^track_title, preload: [tracks: t]
    Repo.all(q)
  end

end
