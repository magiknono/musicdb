defmodule Musicdb.Track do
  use Ecto.Schema

  schema "tracks" do
    field :title, :string
    field :duration, :integer, default: 1
    field :index, :integer
    field :number_of_plays, :integer
    timestamps()
  end
end
