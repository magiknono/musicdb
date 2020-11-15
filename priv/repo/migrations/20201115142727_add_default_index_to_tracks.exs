defmodule Musicdb.Repo.Migrations.AddDefaultIndexToTracks do
  use Ecto.Migration

  def change do
    alter table("tracks") do
      modify :index, :integer, default: 1
    end
  end
end
