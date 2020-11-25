defmodule MusicdbTest do
  use ExUnit.Case
  doctest Musicdb

  @docmodule"""
  TO DO CONFIGURE REAL ECTO TEST
  """

  alias Musicdb.Tracks

  @attrs_valid  %{
      title: "la bamboche",
      duration: 30,
      index: 1,
      number_of_plays: 100
  }

  @attrs_invalid_changeset  %{
    duration: 30,
    index: 1,
    number_of_plays: 100
  }

  test "create_track/1 return an :ok with struct when valid attrs are given" do
    assert {:ok, %Musicdb.Tracks.Track{}} = Tracks.create_track(@attrs_valid)
  end

  test "create_track/1 return an :error with invalid changeset when required attrs is missing" do
    assert {:error, %Ecto.Changeset{}} = Tracks.create_track(@attrs_invalid_changeset)
  end

end
