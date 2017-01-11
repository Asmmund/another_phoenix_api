defmodule Watchlist.Movie do
  use Watchlist.Web, :model

  schema "movies" do
    field :name, :string
    field :rating, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :rating])
    |> validate_required([:name, :rating])
  end
end
