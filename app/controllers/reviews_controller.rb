class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
  end


  def new 
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
    #binding.pry

  end

  def create 
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(params[:review])
    @review.movie_id = @movie.id 
    if @review.save
      redirect_to @movie, notice: "New Review Added!" 
    else
      render action: 'new'
    end
  end

end
