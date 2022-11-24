class MoviesController < ApplicationController
  def index
    if params[:query].present?
      # query = "movies.title @@ :search 
      # OR movies.synopsis @@ :search
      # OR directors.first_name @@ :search
      # OR directors.last_name @@ :search"
      # @movies = Movie.joins(:director).where(query, search: "%#{params[:query]}%")
      @movies = Movie.search_by_title_and_synopsis(params[:query])
    else
      @movies = Movie.all
    end
  end
end
