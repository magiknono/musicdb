defmodule Musicdb.Repo.Migrations.CreateAlbums do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :title, :string
      add :release_date, :date

      timestamps()
    end

  end
end

