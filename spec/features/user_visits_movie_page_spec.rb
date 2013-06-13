require 'spec_helper'

describe 'home page' do
  it 'displays a list of all movies' do
    movie = FactoryGirl.create(:movie)
    visit root_path
    expect(page).to have_content(movie.title)
  end

  it 'has a link to add a movie for review' do
    visit root_path
    expect(page).to have_selector('a', text: 'Add a Movie')

    click_on 'Add a Movie'
    expect(current_path).to eq(new_movie_path)
  end
end
