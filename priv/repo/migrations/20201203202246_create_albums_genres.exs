defmodule Musicdb.Repo.Migrations.CreateAlbumsGenres do
  use Ecto.Migration

  def change do
    create table(:albums_genres, primary_key: false) do
      add :album_id, references(:albums), null: false, primary_key: true
      add :genre_id, references(:genres), null: false, primary_key: true
    end
    create unique_index(:albums_genres, [:album_id, :genre_id])


  end
end
