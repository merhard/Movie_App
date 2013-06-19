class VotesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @movie.votes.create(user_id: current_user.id)
    redirect_to movie_path @movie 
  end
end
