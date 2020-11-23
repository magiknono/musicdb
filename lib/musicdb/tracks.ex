defmodule Musicdb.Tracks do
  alias Musicdb.Repo
  alias Musicdb.Tracks.Track

  def create_track(attrs) do
    %Track{}
    |> Track.create_changeset(attrs)
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

  def count_tracks do
    Repo.aggregate(Track, :count, :id)
    # Repo.aggregate(Track, :aggregatefx, :column_table)
    # aggregate functions available count, avg, min, max, sum
  end
end
