class MoviesController < ApplicationController

  def index
    @movies = Movie.all #Eventually add pagination
    @recent_movies = Movie.most_recent(3)
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(params[:movie])

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully added.'
    else
      render action: "new"
    end
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(params[:movie])
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_url
  end
end
