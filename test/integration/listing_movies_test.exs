defmodule ListingMoviesIntegrationTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias Watchlist.Router
  alias Watchlist.Movie
  alias Watchlist.Repo

  @opts Router.init([])
  test 'listing movies' do
    movie = %Movie{name: "Back to the future", rating: 5}
                    |> Repo.insert!
    conn = conn(:get, "/movies")
    response = Router.call conn, @opts
    assert response.status == 200
    assert response.resp_body == movie
  end

end