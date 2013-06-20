class ReviewsVotesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @review_vote = @review.votes.build
    @review_vote.user = current_user
    @movie = @review.movie

    if @review_vote.save
      redirect_to movie_path @movie 
    else
      redirect_to movie_path @movie, notice: "You can't do that!"
    end
  end
end
