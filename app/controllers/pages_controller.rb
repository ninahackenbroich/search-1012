class PagesController < ApplicationController
  def home
    PgSearch::Multisearch.rebuild(TvShow)
    PgSearch::Multisearch.rebuild(Movie)

    @results = PgSearch.multisearch(params[:query])
  end
end
