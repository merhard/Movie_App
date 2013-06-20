class VotesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @movie_vote = @movie.votes.build(user_id: current_user.id)


    if @movie_vote.save
      redirect_to movie_path @movie 
    else
      redirect_to movie_path @movie, notice: "You can't do that!"
    end
  end
end
