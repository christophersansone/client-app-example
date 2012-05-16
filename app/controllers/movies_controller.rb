class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index'
  end

  def show
    @movie = Movie.find params[:id]
    render 'show'
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes params[:movie]
    render 'show'
  end
end

