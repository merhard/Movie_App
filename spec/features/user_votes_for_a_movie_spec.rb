require 'spec_helper'

describe 'Voting for a movie' do

  let(:movie) { movie = FactoryGirl.create :movie }

  before(:each){
  movie = FactoryGirl.create :movie
  visit movie_path(movie)
  }

  it 'user votes for a movie' do
    prev_count = movie.votes.count
    click_button 'Vote'
    expect(Vote.count).to eql(prev_count + 1)
  end
end