defmodule Musicdb.Tracks do
  alias Musicdb.Repo
  alias Musicdb.Tracks.Track

  def create_track(attrs) do
    %Track{}
    |> Track.changeset(attrs)
    |> Repo.insert()
  end

  def list_tracks do
    Repo.all(Track)
  end

  def show_track_by_id(id) do
    Repo.get!(Track, id)
  end

  def show_track_by_title(title) do
    Repo.get_by!(Track, title: title)
  end

  def delete_track_by_title(title) do
    track = Repo.get_by(Track, title: title)
    Repo.delete!(track)
  end
end
