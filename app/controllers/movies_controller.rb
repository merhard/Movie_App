class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
<<<<<<< HEAD
    @new_vote = @movie.votes.new 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
=======
    @reviews = @movie.reviews
>>>>>>> 6da2b389f90d7ad3cde71329546568597e4c754b
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
