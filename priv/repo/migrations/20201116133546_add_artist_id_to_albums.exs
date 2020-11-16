defmodule Musicdb.Repo.Migrations.AddArtistIdtoAlbums do
  use Ecto.Migration

  def change do
    alter table(:albums) do
      add :artist_id, references(:artists)
    end
  end

end
