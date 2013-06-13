require 'spec_helper'

describe '' do
  let(:movie) { FactoryGirl.create(:movie) }

  it 'displays a movie title' do
    visit movie_path(movie)
    expect(page).to have_content(movie.title)
  end

  it 'displays the movie synopsis' do
    visit movie_path(movie)
    expect(page).to have_content(movie.synopsis)
  end


end
