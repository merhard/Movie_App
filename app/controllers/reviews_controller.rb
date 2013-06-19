class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(params[:review])
    @review.user = current_user

    if @review.save
      redirect_to @movie, notice: "New Review Added!"
    else
      render action: 'new'
    end
  end
end
