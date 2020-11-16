defmodule Musicdb.Repo.Migrations.CreateTracks do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :title, :string, size: 200
      add :duration, :integer, null: :false
      add :index, :integer
      add :number_of_plays, :integer

      timestamps()
    end
  end
end
