defmodule Musicdb.Repo.Migrations.AddAlbumIdToTracks do
  use Ecto.Migration

  def change do
    alter table(:tracks) do
      add :album_id, references(:albums)
    end

  end
end
