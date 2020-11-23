defmodule Musicdb.Repo do
  use Ecto.Repo,
    otp_app: :musicdb,
    adapter: Ecto.Adapters.Postgres

    @doc """
    `Musicdb.Repo.count/1` : Count number of records on a table.

    ## Parameters

      - table: string that represents the name of a table

    ## Examples

        iex> Musicdb.Repo.count("albums")

        {:ok, 7}

    """
    def count(table) do
      count = aggregate(table, :count, :id)
      {:ok, count}
    end
end
