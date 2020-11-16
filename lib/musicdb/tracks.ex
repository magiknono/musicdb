defmodule Musicdb.Tracks do
  alias Musicdb.Repo
  alias Musicdb.Tracks.Track

  def create_track(attrs) do
    %Track{}
    |> Track.changeset(attrs)
    |> Repo.insert()
  end
end
